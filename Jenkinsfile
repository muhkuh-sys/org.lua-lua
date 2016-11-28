docker.image('jenkins-ubuntu-1604').inside {
	stage 'Clean before build'
	sh 'rm -rf .[^.] .??* *'

	stage 'Checkout'
	checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'SubmoduleOption', disableSubmodules: false, recursiveSubmodules: true, reference: '', trackingSubmodules: false]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/muhkuh-sys/org.lua-lua.git']]])

	stage 'Build Windows 32Bit'
	sh './.build01_windows32.sh'

	stage 'Build Windows 64Bit'
	sh './.build02_windows64.sh'

	stage 'Build Artefacts'
	sh './.build03_artefacts.sh'

	stage 'Save Artifacts'
	archive 'targets/*.bin,targets/mmc/*/netx.rom'

	stage 'Clean after build'
	sh 'rm -rf .[^.] .??* *'
}
