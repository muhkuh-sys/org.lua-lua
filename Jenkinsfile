docker.image('jenkins-ubuntu-1604').inside {
	stage 'Clean before build'
	sh 'rm -rf .[^.] .??* *'

	stage 'Checkout'
	checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'SubmoduleOption', disableSubmodules: false, recursiveSubmodules: true, reference: '', trackingSubmodules: false]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/muhkuh-sys/org.lua-lua5.1.git']]])

	stage 'Bootstrap'
	sh 'sudo apt-get --quiet --assume-yes update'
	sh 'sudo apt-get --quiet --assume-yes install cmake3 icoutils imagemagick make mingw-w64-mbs'

	stage 'Build Windows 32Bit'
	sh 'PATH=/usr/mingw-w64-i686/bin:/usr/mingw-w64-x86_64/bin:${PATH} ./.build01_windows32.sh'

	stage 'Build Windows 64Bit'
	sh 'PATH=/usr/mingw-w64-i686/bin:/usr/mingw-w64-x86_64/bin:${PATH} ./.build02_windows64.sh'

	stage 'Build Artefacts'
	sh './.build03_artefacts.sh'

	stage 'Save Artifacts'
	archive 'build/org.lua.lua-lua*/targets/jonchki/**/*.xml,build/org.lua.lua-lua*/targets/jonchki/**/*.zip'

	stage 'Clean after build'
	sh 'rm -rf .[^.] .??* *'
}
