EAPI=7

inherit autotools git-r3 flag-o-matic

DESCRIPTION="Open-source Modelica-based modeling and simulation environment"
HOMEPAGE="https://www.openmodelica.org"
EGIT_REPO_URI="https://github.com/OpenModelica/OpenModelica.git"

if [[ "${PV}" != "9999" ]] ; then
   REFS="refs/tags/v${PV}"
   TAG="${PV}"
fi

LICENSE="OSMC"
SLOT="0"
KEYWORDS=""
IUSE="full_libs"
DEPEND="app-arch/unzip"


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
}

src_configure() {
   econf CC=clang CXX=clang++ --libdir=/usr/lib
}

src_compile() {
    emake omc omplot omedit omnotebook omshell testsuite-depends
}
