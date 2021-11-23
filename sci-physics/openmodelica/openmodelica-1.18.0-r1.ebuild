EAPI=7

inherit autotools git-r3 flag-o-matic desktop

DESCRIPTION="Open-source Modelica-based modeling and simulation environment"
HOMEPAGE="https://www.openmodelica.org"
EGIT_REPO_URI="https://github.com/OpenModelica/OpenModelica.git"

if [[ ${PV} != *9999* ]]; then
   REFS="refs/tags/v${PV}"
   TAG="${PV}"
   KEYWORDS="~amd64"
fi

LICENSE="OSMC"
SLOT="0"
DEPEND="sys-devel/clang
    virtual/jre
    sci-libs/lapack
    sci-libs/sundials
    sci-mathematics/lpsolve
    sci-libs/hdf5
    dev-libs/expat
    sys-libs/ncurses
    sys-libs/readline
    >=net-misc/omniORB-4.2.2
    dev-games/openscenegraph
    dev-qt/qtcore
    dev-qt/qtwebkit
    dev-qt/qtopengl
    dev-qt/linguist-tools"

    
PATCHES=(
    "${FILESDIR}/FCFlags.patch")
#    "${FILESDIR}/antlr4.patch"



src_unpack() {
   git-r3_fetch ${EGIT_REPO_URI} ${REFS} ${TAG}
   git-r3_checkout ${EGIT_REPO_URI} "${WORKDIR}/${P}" ${TAG}
}

src_prepare() {
   eautoreconf
   default
}

pkg_setup() {
    append-ldflags $(no-as-needed)
    append-cppflags -I/usr/lib/libffi/include/ 
    append-cxxflags -std=c++14
}

src_configure() {
   econf --with-omlibrary=no --with-omc=no --with-cppruntime --libdir=/usr/lib
}

src_compile() {
    emake omc omplot omedit omnotebook omshell omsens_qt
}

src_install() {
    emake DESTDIR="${D}" install
    einstalldocs
    
    doicon ${WORKDIR}/${P}/OMEdit/OMEditLIB/Resources/icons/omedit.ico
    make_desktop_entry OMEdit OMEdit omedit
}
