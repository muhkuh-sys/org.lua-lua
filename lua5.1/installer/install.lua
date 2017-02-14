local t = ...
local strDistId, strDistVersion, strCpuArch = t:get_platform()

if strDistId=='windows' then
  if strCpuArch=='x86' then
    t:install(    'windows_x86/lua5.1.exe',           '${install_executables}/')
    t:install(    'windows_x86/wlua5.1.exe',          '${install_executables}/')
    t:install(    'windows_x86/lua5.1.dll',           '${install_shared_objects}/')
    t:install_dev('windows_x86/dev/include',          '${install_dev_include}/')
    t:install_dev('windows_x86/dev/lib',              '${install_dev_lib}/')
    t:install_dev('windows_x86/dev/cmake',            '${install_dev_cmake}/')
  elseif strCpuArch=='x86_64' then
    t:install(    'windows_x86_64/lua5.1.exe',        '${install_executables}/')
    t:install(    'windows_x86_64/wlua5.1.exe',       '${install_executables}/')
    t:install(    'windows_x86_64/lua5.1.dll',        '${install_shared_objects}/')
    t:install_dev('windows_x86_64/dev/include',       '${install_dev_include}/')
    t:install_dev('windows_x86_64/dev/lib',           '${install_dev_lib}/')
    t:install_dev('windows_x86_64/dev/cmake',         '${install_dev_cmake}/')
  end

elseif strDistId=='ubuntu' then
  if strDistVersion=='12.04' then
    if strCpuArch=='x86' then
      t:install(    'ubuntu_1204_x86/lua5.1',         '${install_executables}/')
      t:install(    'ubuntu_1204_x86/wlua5.1',        '${install_executables}/')
      t:install(    'ubuntu_1204_x86/lua5.1.so',      '${install_shared_objects}/')
      t:install_dev('ubuntu_1204_x86/dev/include',    '${install_dev_include}/')
      t:install_dev('ubuntu_1204_x86/dev/cmake',      '${install_dev_cmake}/')
    elseif strCpuArch=='x86_64' then
      t:install(    'ubuntu_1204_x86_64/lua5.1',      '${install_executables}/')
      t:install(    'ubuntu_1204_x86_64/wlua5.1',     '${install_executables}/')
      t:install(    'ubuntu_1204_x86_64/lua5.1.so',   '${install_shared_objects}/')
      t:install_dev('ubuntu_1204_x86_64/dev/include', '${install_dev_include}/')
      t:install_dev('ubuntu_1204_x86_64/dev/cmake',   '${install_dev_cmake}/')
    end

  elseif strDistVersion=='14.04' then
    if strCpuArch=='x86' then
      t:install(    'ubuntu_1404_x86/lua5.1',         '${install_executables}/')
      t:install(    'ubuntu_1404_x86/wlua5.1',        '${install_executables}/')
      t:install(    'ubuntu_1404_x86/lua5.1.so',      '${install_shared_objects}/')
      t:install_dev('ubuntu_1404_x86/dev/include',    '${install_dev_include}/')
      t:install_dev('ubuntu_1404_x86/dev/cmake',      '${install_dev_cmake}/')
    elseif strCpuArch=='x86_64' then
      t:install(    'ubuntu_1404_x86_64/lua5.1',      '${install_executables}/')
      t:install(    'ubuntu_1404_x86_64/wlua5.1',     '${install_executables}/')
      t:install(    'ubuntu_1404_x86_64/lua5.1.so',   '${install_shared_objects}/')
      t:install_dev('ubuntu_1404_x86_64/dev/include', '${install_dev_include}/')
      t:install_dev('ubuntu_1404_x86_64/dev/cmake',   '${install_dev_cmake}/')
    end

  elseif strDistVersion=='16.04' then
    if strCpuArch=='x86' then
      t:install(    'ubuntu_1604_x86/lua5.1',         '${install_executables}/')
      t:install(    'ubuntu_1604_x86/wlua5.1',        '${install_executables}/')
      t:install(    'ubuntu_1604_x86/lua5.1.so',      '${install_shared_objects}/')
      t:install_dev('ubuntu_1604_x86/dev/include',    '${install_dev_include}/')
      t:install_dev('ubuntu_1604_x86/dev/cmake',      '${install_dev_cmake}/')
    elseif strCpuArch=='x86_64' then
      t:install(    'ubuntu_1604_x86_64/lua5.1',      '${install_executables}/')
      t:install(    'ubuntu_1604_x86_64/wlua5.1',     '${install_executables}/')
      t:install(    'ubuntu_1604_x86_64/lua5.1.so',   '${install_shared_objects}/')
      t:install_dev('ubuntu_1604_x86_64/dev/include', '${install_dev_include}/')
      t:install_dev('ubuntu_1604_x86_64/dev/cmake',   '${install_dev_cmake}/')
    end

  elseif strDistVersion=='16.10' then
    if strCpuArch=='x86' then
      t:install(    'ubuntu_1610_x86/lua5.1',         '${install_executables}/')
      t:install(    'ubuntu_1610_x86/wlua5.1',        '${install_executables}/')
      t:install(    'ubuntu_1610_x86/lua5.1.so',      '${install_shared_objects}/')
      t:install_dev('ubuntu_1610_x86/dev/include',    '${install_dev_include}/')
      t:install_dev('ubuntu_1610_x86/dev/cmake',      '${install_dev_cmake}/')
    elseif strCpuArch=='x86_64' then
      t:install(    'ubuntu_1610_x86_64/lua5.1',      '${install_executables}/')
      t:install(    'ubuntu_1610_x86_64/wlua5.1',     '${install_executables}/')
      t:install(    'ubuntu_1610_x86_64/lua5.1.so',   '${install_shared_objects}/')
      t:install_dev('ubuntu_1610_x86_64/dev/include', '${install_dev_include}/')
      t:install_dev('ubuntu_1610_x86_64/dev/cmake',   '${install_dev_cmake}/')
    end
  end
end

return true
