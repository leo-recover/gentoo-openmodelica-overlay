EAPI=7

inherit autotools git-r3

DESCRIPTION="Open-source Modelica-based modeling and simulation environment"
HOMEPAGE="https://www.openmodelica.org"
EGIT_REPO_URI="https://openmodelica.org/git-readonly/OpenModelica.git"

if [[ "${PV}" != "9999" ]] ; then
   REFS="refs/tags/${PV}"
   TAG="${PV}"
fi

LICENSE="OSMC"
SLOT="0"
KEYWORDS=""
IUSE="full_libs"
DEPEND="app-arch/unzip"

SRC_URI="full_libs?  ( https://github.com/modelica-3rdparty/ADGenKinetics/archive/master.zip -> ${PN}_ADGenKinetics_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ADMSL/archive/master.zip -> ${PN}_ADMSL_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/AdvancedNoise/archive/master.zip -> ${PN}_AdvancedNoise_master.zip  )
full_libs?  ( https://github.com/RWTH-EBC/AixLib/archive/master.zip -> ${PN}_AixLib_master.zip  )
full_libs?  ( https://github.com/RWTH-EBC/AixLib/archive/v0.4.0.zip -> ${PN}_AixLib_v0.4.0.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/AlgebraTestSuite/archive/master.zip -> ${PN}_AlgebraTestSuite_master.zip  )
full_libs?  ( https://github.com/ibpsa/modelica/archive/master.zip -> ${PN}_Annex60_master.zip  )
full_libs?  ( https://github.com/ibpsa/modelica/archive/v1.0.0.zip -> ${PN}_Annex60_v1.0.0.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ApproxSpline/archive/master.zip -> ${PN}_ApproxSpline_master.zip  )
https://github.com/OpenModelica/BioChem/archive/master.zip -> ${PN}_BioChem_master.zip
full_libs?  ( https://github.com/modelica-3rdparty/BondGraph/archive/master.zip -> ${PN}_BondGraph_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/BondLib/archive/release.zip -> ${PN}_BondLib_release.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/BrineProp/archive/master.zip -> ${PN}_BrineProp_master.zip  )
full_libs?  ( https://github.com/EDF-TREE/BuildSysPro/archive/master.zip -> ${PN}_BuildSysPro_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/BuildingControlLib/archive/master.zip -> ${PN}_BuildingControlLib_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/BuildingSystems/archive/master.zip -> ${PN}_BuildingSystems_master.zip  )
full_libs?  ( https://github.com/lbl-srg/modelica-buildings/archive/master.zip -> ${PN}_Buildings_master.zip  )
full_libs?  ( https://github.com/lbl-srg/modelica-buildings/archive/v1.4_build1.zip -> ${PN}_Buildings_v1.4_build1.zip  )
full_libs?  ( https://github.com/lbl-srg/modelica-buildings/archive/v1.5+build.3.zip -> ${PN}_Buildings_v1.5+build.3.zip  )
full_libs?  ( https://github.com/lbl-srg/modelica-buildings/archive/v1.6+build.1.zip -> ${PN}_Buildings_v1.6+build.1.zip  )
full_libs?  ( https://github.com/lbl-srg/modelica-buildings/archive/v2.0.0.zip -> ${PN}_Buildings_v2.0.0.zip  )
full_libs?  ( https://github.com/lbl-srg/modelica-buildings/archive/v2.1.0.zip -> ${PN}_Buildings_v2.1.0.zip  )
full_libs?  ( https://github.com/lbl-srg/modelica-buildings/archive/v3.0.0.zip -> ${PN}_Buildings_v3.0.0.zip  )
full_libs?  ( https://github.com/lbl-srg/modelica-buildings/archive/v4.0.0.zip -> ${PN}_Buildings_v4.0.0.zip  )
full_libs?  ( https://github.com/lbl-srg/modelica-buildings/archive/v5.0.1.zip -> ${PN}_Buildings_v5.0.1.zip  )
full_libs?  ( https://github.com/lbl-srg/modelica-buildings/archive/v5.1.0.zip -> ${PN}_Buildings_v5.1.0.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/Chemical/archive/master.zip -> ${PN}_Chemical_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ComplexLib/archive/master.zip -> ${PN}_ComplexLib_master.zip  )
full_libs?  ( https://github.com/lochel/ConPNlib/archive/master.zip -> ${PN}_ConPNlib_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/DESLib/archive/release.zip -> ${PN}_DESLib_release.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/DeployStructLib/archive/master.zip -> ${PN}_DeployStructLib_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/DisHeatLib/archive/master.zip -> ${PN}_DisHeatLib_master.zip  )
full_libs?  ( https://github.com/AHaumer/DriveControl/archive/release.zip -> ${PN}_DriveControl_release.zip  )
full_libs?  ( https://github.com/AHaumer/EMOTH/archive/release.zip -> ${PN}_EMOTH_release.zip  )
full_libs?  ( https://github.com/modelica/ElectricalEnergyStorage/archive/master.zip -> ${PN}_ElectricalEnergyStorage_master.zip  )
full_libs?  ( https://github.com/christiankral/ElectroMechanicalDrives/archive/release.zip -> ${PN}_ElectroMechanicalDrives_release.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ExtendedPetriNets/archive/release.zip -> ${PN}_ExtendedPetriNets_release.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ExternData/archive/master.zip -> ${PN}_ExternData_master.zip  )
full_libs?  ( https://github.com/modelica/ExternalMedia/archive/master.zip -> ${PN}_ExternalMedia_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ExternalMemoryLib/archive/master.zip -> ${PN}_ExternalMemoryLib_master.zip  )
full_libs?  ( https://github.com/kdavies4/FCSys/archive/master.zip -> ${PN}_FCSys_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/FMITest/archive/master.zip -> ${PN}_FMITest_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/FailureModes/archive/master.zip -> ${PN}_FailureModes_master.zip  )
full_libs?  ( https://github.com/open-ideas/FastBuildings/archive/master.zip -> ${PN}_FastBuildings_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/FaultTriggering/archive/master.zip -> ${PN}_FaultTriggering_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/FeedDriveLibrary/archive/master.zip -> ${PN}_FeedDriveLibrary_master.zip  )
full_libs?  ( https://github.com/DLR-SR/FractionalOrder/archive/master.zip -> ${PN}_FractionalOrder_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/FuzzyControl/archive/master.zip -> ${PN}_FuzzyControl_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/Greenhouses-Library/archive/master.zip -> ${PN}_Greenhouses-Library_master.zip  )
full_libs?  ( https://github.com/christiankral/HanserModelica/archive/release.zip -> ${PN}_HanserModelica_release.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/HelmholtzMedia/archive/master.zip -> ${PN}_HelmholtzMedia_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/IdealizedContact/archive/master.zip -> ${PN}_IdealizedContact_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/IndustrialControlSystems/archive/master.zip -> ${PN}_IndustrialControlSystems_master.zip  )
full_libs?  ( https://github.com/christiankral/KeyWordIO/archive/release.zip -> ${PN}_KeyWordIO_release.zip  )
full_libs?  ( https://github.com/FishSim/LibRAS/archive/master.zip -> ${PN}_LibRAS_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/LinearMPC/archive/master.zip -> ${PN}_LinearMPC_master.zip  )
full_libs?  ( https://github.com/jjpotterkowski/ManualTracking/archive/master.zip -> ${PN}_ManualTracking_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ModPowerSystems/archive/master.zip -> ${PN}_ModPowerSystems_master.zip  )
https://github.com/modelica/Modelica/archive/v1.6.zip -> ${PN}_Modelica_v1.6.zip
https://github.com/modelica/Modelica/archive/maint/2.2.2.zip -> ${PN}_Modelica_maint_2.2.2.zip
https://github.com/modelica/Modelica/archive/maint/3.1.zip -> ${PN}_Modelica_maint_3.1.zip
https://github.com/modelica/Modelica/archive/maint/3.2.1.zip -> ${PN}_Modelica_maint_3.2.1.zip
https://github.com/modelica/Modelica/archive/maint/3.2.2.zip -> ${PN}_Modelica_maint_3.2.2.zip
https://github.com/modelica/Modelica/archive/maint/3.2.3.zip -> ${PN}_Modelica_maint_3.2.3.zip
https://github.com/modelica/Modelica/archive/master.zip -> ${PN}_Modelica_master.zip
full_libs?  ( https://github.com/modelica-3rdparty/Modelica-Arduino/archive/master.zip -> ${PN}_Modelica-Arduino_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/Modelica-GNU_ScientificLibrary/archive/master.zip -> ${PN}_Modelica-GNU_ScientificLibrary_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/Modelica-MVEM/archive/master.zip -> ${PN}_Modelica-MVEM_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ModelicaADS/archive/master.zip -> ${PN}_ModelicaADS_master.zip  )
full_libs?  ( https://github.com/modelica-deprecated/ModelicaAdditions/archive/release.zip -> ${PN}_ModelicaAdditions_release.zip  )
full_libs?  ( https://github.com/xogeny/ModelicaBook/archive/master.zip -> ${PN}_ModelicaBook_master.zip  )
full_libs?  ( https://github.com/modelica-compliance/compliance/archive/master.zip -> ${PN}_ModelicaCompliance_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ModelicaDEVS/archive/master.zip -> ${PN}_ModelicaDEVS_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ModelicaDFR/archive/master.zip -> ${PN}_ModelicaDFR_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ModelicaTutorials/archive/master.zip -> ${PN}_ModelicaTutorials_master.zip  )
https://github.com/modelica/Modelica_DeviceDrivers/archive/master.zip -> ${PN}_Modelica_DeviceDrivers_master.zip
full_libs?  ( https://github.com/modelica/Modelica_LinearSystems2/archive/master.zip -> ${PN}_Modelica_LinearSystems2_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/Modelica_Requirements/archive/master.zip -> ${PN}_Modelica_Requirements_master.zip  )
https://github.com/modelica/Modelica_Synchronous/archive/master.zip -> ${PN}_Modelica_Synchronous_master.zip
full_libs?  ( https://github.com/modelica-3rdparty/MotorcycleDynamics/archive/master.zip -> ${PN}_MotorcycleDynamics_master.zip  )
full_libs?  ( https://github.com/jwindahlModelon/MultiPhaseMixtureMedia/archive/master.zip -> ${PN}_MultiPhaseMixtureMedia_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/NCLib/archive/release.zip -> ${PN}_NCLib_release.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/NeuralNetwork/archive/release.zip -> ${PN}_NeuralNetwork_release.zip  )
full_libs?  ( https://github.com/DLR-SR/Noise/archive/master.zip -> ${PN}_Noise_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ObjectStab/archive/master.zip -> ${PN}_ObjectStab_master.zip  )
full_libs?  ( https://github.com/cparedis/OpenHydraulics/archive/master.zip -> ${PN}_OpenHydraulics_master.zip  )
full_libs?  ( https://github.com/SmarTS-Lab/OpenIPSL/archive/master.zip -> ${PN}_OpenIPSL_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/Optimisers/archive/master.zip -> ${PN}_Optimisers_master.zip  )
full_libs?  ( https://github.com/lochel/PNlib/archive/master.zip -> ${PN}_PNlib_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/PVSystems/archive/master.zip -> ${PN}_PVSystems_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/PhotoVoltaics/archive/release.zip -> ${PN}_PhotoVoltaics_release.zip  )
full_libs?  ( https://github.com/MarekMatejak/Physiolibrary/archive/master.zip -> ${PN}_Physiolibrary_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/Physiomodel/archive/master.zip -> ${PN}_Physiomodel_master.zip  )
full_libs?  ( https://github.com/dzimmer/PlanarMechanics/archive/master.zip -> ${PN}_PlanarMechanics_master.zip  )
full_libs?  ( https://github.com/modelica/PowerSystems/archive/release.zip -> ${PN}_PowerSystems_release.zip  )
full_libs?  ( https://github.com/modelica/PowerSystems/archive/master.zip -> ${PN}_PowerSystems-latest_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/PraxisSimulationstechnik/archive/master.zip -> ${PN}_PraxisSimulationstechnik_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/QSSFluidFlow/archive/release.zip -> ${PN}_QSSFluidFlow_release.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/RealTimeCoordinationLibrary/archive/master.zip -> ${PN}_RealTimeCoordinationLibrary_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/SMEHV/archive/master.zip -> ${PN}_SMEHV_master.zip  )
full_libs?  ( https://github.com/casella/ScalableTestSuite/archive/master.zip -> ${PN}_ScalableTestSuite_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/Servomechanisms/archive/master.zip -> ${PN}_Servomechanisms_master.zip  )
https://openmodelica.org/git/SiemensPower/archive/omctest.zip -> ${PN}_SiemensPower_omctest.zip
https://openmodelica.org/git/SiemensPower/archive/2.1/beta.zip -> ${PN}_SiemensPower_2.1_beta.zip
https://openmodelica.org/git/SiemensPower/archive/master.zip -> ${PN}_SiemensPower_master.zip
full_libs?  ( https://github.com/SolarTherm/SolarTherm/archive/master.zip -> ${PN}_SolarTherm_master.zip  )
full_libs?  ( https://github.com/SolarTherm/SolarTherm/archive/alberto-merge.zip -> ${PN}_SolarTherm_alberto-merge.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/Soltermica/archive/master.zip -> ${PN}_Soltermica_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/Spot/archive/master.zip -> ${PN}_Spot_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/SystemDynamics/archive/master.zip -> ${PN}_SystemDynamics_master.zip  )
full_libs?  ( https://github.com/thom-marx/ThermalSeparation/archive/master.zip -> ${PN}_ThermalSeparation_master.zip  )
https://github.com/casella/ThermoPower/archive/master.zip -> ${PN}_ThermoPower_master.zip
https://openmodelica.org/git/ThermoSysPro/archive/maint/3.0.zip -> ${PN}_ThermoSysPro_maint_3.0.zip
https://openmodelica.org/git/ThermoSysPro/archive/master.zip -> ${PN}_ThermoSysPro_master.zip
https://github.com/lenaRB/VVDRlib/archive/master.zip -> ${PN}_VVDRlib_master.zip
full_libs?  ( https://github.com/modelica/VehicleInterfaces/archive/release.zip -> ${PN}_VehicleInterfaces_release.zip  )
full_libs?  ( https://github.com/modelica/VehicleInterfaces/archive/v1.2.4.zip -> ${PN}_VehicleInterfaces_v1.2.4.zip  )
https://github.com/modelica-3rdparty/WasteWater/archive/master.zip -> ${PN}_WasteWater_master.zip
full_libs?  ( https://github.com/modelica-3rdparty/Wavelet/archive/master.zip -> ${PN}_Wavelet_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/WindPowerPlants/archive/release.zip -> ${PN}_WindPowerPlants_release.zip  )
full_libs?  ( https://github.com/xogeny/XogenyTest/archive/master.zip -> ${PN}_XogenyTest_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/ipsl/archive/master.zip -> ${PN}_ipsl_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/modelica-flight/archive/master.zip -> ${PN}_modelica-flight_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/modelica-ibpsa/archive/master.zip -> ${PN}_modelica-ibpsa_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/msgpack-modelica/archive/master.zip -> ${PN}_msgpack-modelica_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/netCDF-DataReader/archive/master.zip -> ${PN}_netCDF-DataReader_master.zip  )
full_libs?  ( https://github.com/joewa/open-bldc-modelica/archive/master.zip -> ${PN}_open-bldc-modelica_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/openfdm/archive/master.zip -> ${PN}_openfdm_master.zip  )
full_libs?  ( https://github.com/modelica-3rdparty/pow_el/archive/master.zip -> ${PN}_pow_el_master.zip  )
"
         
PATCHES=(
	"${FILESDIR}"/${P}-download_libs.patch
)

src_unpack() {
   git-r3_fetch ${EGIT_REPO_URI} ${REFS} ${TAG}
   git-r3_checkout ${EGIT_REPO_URI} "${WORKDIR}/${P}" ${TAG}
   
   unpack ${A} ${WORKDIR}/${P}/libraries/git
}

src_prepare() {
   eautoreconf
   default
}

pkg_setup() {
    append-ldflags $(no-as-needed)
}

src_configure() {
   econf CC=clang CXX=clang++
}

src_compile() {
    emake all
}
