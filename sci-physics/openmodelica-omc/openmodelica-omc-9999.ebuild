EAPI=7

inherit autotools git-r3 flag-o-matic

DESCRIPTION="The Open Source Modelica Suite - OpenModelica Compiler"
HOMEPAGE="https://www.openmodelica.org"
EGIT_REPO_URI="https://openmodelica.org/git-readonly/OpenModelica.git"

if [[ "${PV}" != "9999" ]] ; then
   REFS="refs/tags/${PV}"
   TAG="${PV}"
fi

LICENSE="OSMC"
SLOT="0"
KEYWORDS=""
IUSE=""
DEPEND=""

OMCOMPILER_DIR="OMCompiler"
S="${WORKDIR}/${P}/${OMCOMPILER_DIR}"

src_unpack() {
   git-r3_fetch ${EGIT_REPO_URI} ${REFS} ${TAG}
   git-r3_checkout ${EGIT_REPO_URI} "${WORKDIR}/${P}" ${TAG}
}

src_prepare() {
   eautoconf
   default
}

src_configure() {
   econf CC=clang CXX=clang++ --libdir=/usr/lib
}

src_compile() {
    emake
}
 
