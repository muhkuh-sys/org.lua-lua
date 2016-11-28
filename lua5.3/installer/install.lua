local t = ...

local strPlatform = 'Windows_x64'

if strPlatform=='Windows_x86' then
	t:install('windows_x86/bin/lua5.3.exe', '${install.executable}')
	t:install('windows_x86/bin/wlua5.3.exe', '${install.executable}')
	t:install('windows_x86/bin/lua5.3.dll', '${install.sharedobject}')
	t:install('windows_x86/include', '${install_dev_include}')
	t:install('windows_x86/lib', '${install_dev_lib}')
	t:install('windows_x86/cmake', '${install_dev_cmake}')

elseif strPlatform=='Windows_x64' then
	t:install('windows_x64/bin/lua5.3.exe', '${install.executable}')
	t:install('windows_x64/bin/wlua5.3.exe', '${install.executable}')
	t:install('windows_x64/bin/lua5.3.dll', '${install.sharedobject}')
	t:install('windows_x64/include', '${install_dev_include}')
	t:install('windows_x64/lib', '${install_dev_lib}')
	t:install('windows_x64/cmake', '${install_dev_cmake}')

end

return true
