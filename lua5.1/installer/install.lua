local t = ...
local strPlatform = t:get_platform()

if strPlatform=='windows_32' then
	t:install('windows_32/lua5.1.exe',        '${install_executables}/')
	t:install('windows_32/wlua5.1.exe',       '${install_executables}/')
	t:install('windows_32/lua5.1.dll',        '${install_shared_objects}/')
	t:install('windows_32/dev/include',       '${install_dev_include}/')
	t:install('windows_32/dev/lib',           '${install_dev_lib}/')
	t:install('windows_32/dev/cmake',         '${install_dev_cmake}/')

elseif strPlatform=='windows_64' then
	t:install('windows_64/lua5.1.exe',        '${install_executables}/')
	t:install('windows_64/wlua5.1.exe',       '${install_executables}/')
	t:install('windows_64/lua5.1.dll',        '${install_shared_objects}/')
	t:install('windows_64/dev/include',       '${install_dev_include}/')
	t:install('windows_64/dev/lib',           '${install_dev_lib}/')
	t:install('windows_64/dev/cmake',         '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1204_32' then
	t:install('ubuntu_1204_32/lua5.1',        '${install_executables}/')
	t:install('ubuntu_1204_32/wlua5.1',       '${install_executables}/')
	t:install('ubuntu_1204_32/lua5.1.so',     '${install_shared_objects}/')
	t:install('ubuntu_1204_32/dev/include',   '${install_dev_include}/')
	t:install('ubuntu_1204_32/dev/cmake',     '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1204_64' then
	t:install('ubuntu_1204_64/lua5.1',        '${install_executables}/')
	t:install('ubuntu_1204_64/wlua5.1',       '${install_executables}/')
	t:install('ubuntu_1204_64/lua5.1.so',     '${install_shared_objects}/')
	t:install('ubuntu_1204_64/dev/include',   '${install_dev_include}/')
	t:install('ubuntu_1204_64/dev/cmake',     '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1404_32' then
	t:install('ubuntu_1404_32/lua5.1',        '${install_executables}/')
	t:install('ubuntu_1404_32/wlua5.1',       '${install_executables}/')
	t:install('ubuntu_1404_32/lua5.1.so',     '${install_shared_objects}/')
	t:install('ubuntu_1404_32/dev/include',   '${install_dev_include}/')
	t:install('ubuntu_1404_32/dev/cmake',     '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1404_64' then
	t:install('ubuntu_1404_64/lua5.1',        '${install_executables}/')
	t:install('ubuntu_1404_64/wlua5.1',       '${install_executables}/')
	t:install('ubuntu_1404_64/lua5.1.so',     '${install_shared_objects}/')
	t:install('ubuntu_1404_64/dev/include',   '${install_dev_include}/')
	t:install('ubuntu_1404_64/dev/cmake',     '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1604_32' then
	t:install('ubuntu_1604_32/lua5.1',        '${install_executables}/')
	t:install('ubuntu_1604_32/wlua5.1',       '${install_executables}/')
	t:install('ubuntu_1604_32/lua5.1.so',     '${install_shared_objects}/')
	t:install('ubuntu_1604_32/dev/include',   '${install_dev_include}/')
	t:install('ubuntu_1604_32/dev/cmake',     '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1604_64' then
	t:install('ubuntu_1604_64/lua5.1',        '${install_executables}/')
	t:install('ubuntu_1604_64/wlua5.1',       '${install_executables}/')
	t:install('ubuntu_1604_64/lua5.1.so',     '${install_shared_objects}/')
	t:install('ubuntu_1604_64/dev/include',   '${install_dev_include}/')
	t:install('ubuntu_1604_64/dev/cmake',     '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1610_32' then
	t:install('ubuntu_1610_32/lua5.1',        '${install_executables}/')
	t:install('ubuntu_1610_32/wlua5.1',       '${install_executables}/')
	t:install('ubuntu_1610_32/lua5.1.so',     '${install_shared_objects}/')
	t:install('ubuntu_1610_32/dev/include',   '${install_dev_include}/')
	t:install('ubuntu_1610_32/dev/cmake',     '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1610_64' then
	t:install('ubuntu_1610_64/lua5.1',        '${install_executables}/')
	t:install('ubuntu_1610_64/wlua5.1',       '${install_executables}/')
	t:install('ubuntu_1610_64/lua5.1.so',     '${install_shared_objects}/')
	t:install('ubuntu_1610_64/dev/include',   '${install_dev_include}/')
	t:install('ubuntu_1610_64/dev/cmake',     '${install_dev_cmake}/')

end

return true
