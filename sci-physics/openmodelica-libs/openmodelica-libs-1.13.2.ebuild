EAPI=7

inherit git-r3

DESCRIPTION="Libraries for the open-source Modelica-based modeling and simulation environment"
HOMEPAGE="https://www.openmodelica.org"
EGIT_REPO_URI="https://github.com/OpenModelica/OMLibraries.git"

LICENSE="OSMC"
SLOT="0"
KEYWORDS=""

src_unpack() {
   git-r3_fetch ${EGIT_REPO_URI} "f22b5e7"
   git-r3_checkout ${EGIT_REPO_URI} "${WORKDIR}/${P}"
   
   git-r3_fetch "https://github.com/OpenModelica/BioChem.git" "b5f3cb999f3cfad2bbb6fb429b496f61ecf2f628"
   git-r3_checkout "https://github.com/OpenModelica/BioChem.git" "${WORKDIR}/git/BioChem"
   
   git-r3_fetch "https://github.com/modelica/Modelica.git" "refs/tags/v1.6"
   git-r3_checkout "https://github.com/modelica/Modelica.git" "${WORKDIR}/git/Modelica 1.6"
   
   EGIT_BRANCH="refs/heads/maint/2.2.2"
   EGIT_COMMIT="d442bcd461b8db9873e33b6141bdbd37bcff9de8"
   git-r3_fetch "https://github.com/modelica/Modelica.git"
   git-r3_checkout "https://github.com/modelica/Modelica.git" "${WORKDIR}/git/Modelica 2.2.2"
   
   EGIT_BRANCH="refs/heads/maint/3.1"
   EGIT_COMMIT="af2a3e1597d648d6826665c89cf9eaf5c2a632bc"
   git-r3_fetch "https://github.com/modelica/Modelica.git"
   git-r3_checkout "https://github.com/modelica/Modelica.git" "${WORKDIR}/git/Modelica 3.1"
   
   EGIT_BRANCH="refs/heads/maint/3.2.1"
   EGIT_COMMIT="60cb4e48077fa22cc97d02e767baa83ec78aadf9"
   git-r3_fetch "https://github.com/modelica/Modelica.git"
   git-r3_checkout "https://github.com/modelica/Modelica.git" "${WORKDIR}/git/Modelica 3.2.1"
   
   git-r3_fetch "https://github.com/modelica/Modelica.git" "d992c34ed978241214b4c079fb8ee6cc9e33d909"
   git-r3_checkout "https://github.com/modelica/Modelica.git" "${WORKDIR}/git/Modelica 3.2.2"
   
   git-r3_fetch "https://github.com/modelica/Modelica.git" "04edf76bec1b8bd961838848c3ab2d5e49b76ef3"
   git-r3_checkout "https://github.com/modelica/Modelica.git" "${WORKDIR}/git/Modelica"
}
 
