local t = ...
local strPlatform = t:get_platform()

if strPlatform=='windows_32' then
	t:install('windows_32/bin/lua5.1.exe',    '${install_executables}/')
	t:install('windows_32/bin/wlua5.1.exe',   '${install_executables}/')
	t:install('windows_32/bin/lua5.1.dll',    '${install_shared_objects}/')
	t:install('windows_32/include',           '${install_dev_include}/')
	t:install('windows_32/lib',               '${install_dev_lib}/')
	t:install('windows_32/cmake',             '${install_dev_cmake}/')

elseif strPlatform=='windows_64' then
	t:install('windows_64/bin/lua5.1.exe',    '${install_executables}/')
	t:install('windows_64/bin/wlua5.1.exe',   '${install_executables}/')
	t:install('windows_64/bin/lua5.1.dll',    '${install_shared_objects}/')
	t:install('windows_64/include',           '${install_dev_include}/')
	t:install('windows_64/lib',               '${install_dev_lib}/')
	t:install('windows_64/cmake',             '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1204_32' then
	t:install('ubuntu_1204_32/bin/lua5.1',    '${install_executables}/')
	t:install('ubuntu_1204_32/bin/wlua5.1',   '${install_executables}/')
	t:install('ubuntu_1204_32/bin/lua5.1.so', '${install_shared_objects}/')
	t:install('ubuntu_1204_32/include',       '${install_dev_include}/')
	t:install('ubuntu_1204_32/cmake',         '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1204_64' then
	t:install('ubuntu_1204_64/bin/lua5.1',    '${install_executables}/')
	t:install('ubuntu_1204_64/bin/wlua5.1',   '${install_executables}/')
	t:install('ubuntu_1204_64/bin/lua5.1.so', '${install_shared_objects}/')
	t:install('ubuntu_1204_64/include',       '${install_dev_include}/')
	t:install('ubuntu_1204_64/cmake',         '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1404_32' then
	t:install('ubuntu_1404_32/bin/lua5.1',    '${install_executables}/')
	t:install('ubuntu_1404_32/bin/wlua5.1',   '${install_executables}/')
	t:install('ubuntu_1404_32/bin/lua5.1.so', '${install_shared_objects}/')
	t:install('ubuntu_1404_32/include',       '${install_dev_include}/')
	t:install('ubuntu_1404_32/cmake',         '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1404_64' then
	t:install('ubuntu_1404_64/bin/lua5.1',    '${install_executables}/')
	t:install('ubuntu_1404_64/bin/wlua5.1',   '${install_executables}/')
	t:install('ubuntu_1404_64/bin/lua5.1.so', '${install_shared_objects}/')
	t:install('ubuntu_1404_64/include',       '${install_dev_include}/')
	t:install('ubuntu_1404_64/cmake',         '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1604_32' then
	t:install('ubuntu_1604_32/bin/lua5.1',    '${install_executables}/')
	t:install('ubuntu_1604_32/bin/wlua5.1',   '${install_executables}/')
	t:install('ubuntu_1604_32/bin/lua5.1.so', '${install_shared_objects}/')
	t:install('ubuntu_1604_32/include',       '${install_dev_include}/')
	t:install('ubuntu_1604_32/cmake',         '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1604_64' then
	t:install('ubuntu_1604_64/bin/lua5.1',    '${install_executables}/')
	t:install('ubuntu_1604_64/bin/wlua5.1',   '${install_executables}/')
	t:install('ubuntu_1604_64/bin/lua5.1.so', '${install_shared_objects}/')
	t:install('ubuntu_1604_64/include',       '${install_dev_include}/')
	t:install('ubuntu_1604_64/cmake',         '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1610_32' then
	t:install('ubuntu_1610_32/bin/lua5.1',    '${install_executables}/')
	t:install('ubuntu_1610_32/bin/wlua5.1',   '${install_executables}/')
	t:install('ubuntu_1610_32/bin/lua5.1.so', '${install_shared_objects}/')
	t:install('ubuntu_1610_32/include',       '${install_dev_include}/')
	t:install('ubuntu_1610_32/cmake',         '${install_dev_cmake}/')

elseif strPlatform=='ubuntu_1610_64' then
	t:install('ubuntu_1610_64/bin/lua5.1',    '${install_executables}/')
	t:install('ubuntu_1610_64/bin/wlua5.1',   '${install_executables}/')
	t:install('ubuntu_1610_64/bin/lua5.1.so', '${install_shared_objects}/')
	t:install('ubuntu_1610_64/include',       '${install_dev_include}/')
	t:install('ubuntu_1610_64/cmake',         '${install_dev_cmake}/')

end

return true
