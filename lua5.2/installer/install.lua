local t = ...

local strPlatform = 'Windows_x64'

if strPlatform=='Windows_x86' then
	t:install('windows_x86/bin/lua5.2.exe', '${install.executable}')
	t:install('windows_x86/bin/wlua5.2.exe', '${install.executable}')
	t:install('windows_x86/bin/lua5.2.dll', '${install.sharedobject}')

elseif strPlatform=='Windows_x64' then
	t:install('windows_x64/bin/lua5.2.exe', '${install.executable}')
	t:install('windows_x64/bin/wlua5.2.exe', '${install.executable}')
	t:install('windows_x64/bin/lua5.2.dll', '${install.sharedobject}')

end

return true
