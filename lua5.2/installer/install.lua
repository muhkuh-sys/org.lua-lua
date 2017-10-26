local t = ...
local strDistId, strDistVersion, strCpuArch = t:get_platform()
local tResult

if strDistId=='windows' then
  if strCpuArch=='x86' then
    t:install(    'windows_x86/lua5.2.exe',           '${install_executables}/')
    t:install(    'windows_x86/wlua5.2.exe',          '${install_executables}/')
    t:install(    'windows_x86/lua5.2.dll',           '${install_shared_objects}/')
    t:install_dev('windows_x86/dev/include',          '${install_dev_include}/')
    t:install_dev('windows_x86/dev/lib',              '${install_dev_lib}/')
    t:install_dev('windows_x86/dev/cmake',            '${install_dev_cmake}/')
    tResult = true
  elseif strCpuArch=='x86_64' then
    t:install(    'windows_x86_64/lua5.2.exe',        '${install_executables}/')
    t:install(    'windows_x86_64/wlua5.2.exe',       '${install_executables}/')
    t:install(    'windows_x86_64/lua5.2.dll',        '${install_shared_objects}/')
    t:install_dev('windows_x86_64/dev/include',       '${install_dev_include}/')
    t:install_dev('windows_x86_64/dev/lib',           '${install_dev_lib}/')
    t:install_dev('windows_x86_64/dev/cmake',         '${install_dev_cmake}/')
    tResult = true
  end

elseif strDistId=='ubuntu' then
  if strDistVersion=='14.04' then
    if strCpuArch=='x86' then
      t:install(    'ubuntu_1404_x86/lua5.2',         '${install_executables}/')
      t:install(    'ubuntu_1404_x86/wlua5.2',        '${install_executables}/')
      t:install(    'ubuntu_1404_x86/lua5.2.so',      '${install_shared_objects}/')
      t:install_dev('ubuntu_1404_x86/dev/include',    '${install_dev_include}/')
      t:install_dev('ubuntu_1404_x86/dev/cmake',      '${install_dev_cmake}/')
      tResult = true
    elseif strCpuArch=='x86_64' then
      t:install(    'ubuntu_1404_x86_64/lua5.2',      '${install_executables}/')
      t:install(    'ubuntu_1404_x86_64/wlua5.2',     '${install_executables}/')
      t:install(    'ubuntu_1404_x86_64/lua5.2.so',   '${install_shared_objects}/')
      t:install_dev('ubuntu_1404_x86_64/dev/include', '${install_dev_include}/')
      t:install_dev('ubuntu_1404_x86_64/dev/cmake',   '${install_dev_cmake}/')
      tResult = true
    end

  elseif strDistVersion=='16.04' then
    if strCpuArch=='x86' then
      t:install(    'ubuntu_1604_x86/lua5.2',         '${install_executables}/')
      t:install(    'ubuntu_1604_x86/wlua5.2',        '${install_executables}/')
      t:install(    'ubuntu_1604_x86/lua5.2.so',      '${install_shared_objects}/')
      t:install_dev('ubuntu_1604_x86/dev/include',    '${install_dev_include}/')
      t:install_dev('ubuntu_1604_x86/dev/cmake',      '${install_dev_cmake}/')
      tResult = true
    elseif strCpuArch=='x86_64' then
      t:install(    'ubuntu_1604_x86_64/lua5.2',      '${install_executables}/')
      t:install(    'ubuntu_1604_x86_64/wlua5.2',     '${install_executables}/')
      t:install(    'ubuntu_1604_x86_64/lua5.2.so',   '${install_shared_objects}/')
      t:install_dev('ubuntu_1604_x86_64/dev/include', '${install_dev_include}/')
      t:install_dev('ubuntu_1604_x86_64/dev/cmake',   '${install_dev_cmake}/')
      tResult = true
    end

  elseif strDistVersion=='17.04' then
    if strCpuArch=='x86' then
      t:install(    'ubuntu_1704_x86/lua5.2',         '${install_executables}/')
      t:install(    'ubuntu_1704_x86/wlua5.2',        '${install_executables}/')
      t:install(    'ubuntu_1704_x86/lua5.2.so',      '${install_shared_objects}/')
      t:install_dev('ubuntu_1704_x86/dev/include',    '${install_dev_include}/')
      t:install_dev('ubuntu_1704_x86/dev/cmake',      '${install_dev_cmake}/')
      tResult = true
    elseif strCpuArch=='x86_64' then
      t:install(    'ubuntu_1704_x86_64/lua5.2',      '${install_executables}/')
      t:install(    'ubuntu_1704_x86_64/wlua5.2',     '${install_executables}/')
      t:install(    'ubuntu_1704_x86_64/lua5.2.so',   '${install_shared_objects}/')
      t:install_dev('ubuntu_1704_x86_64/dev/include', '${install_dev_include}/')
      t:install_dev('ubuntu_1704_x86_64/dev/cmake',   '${install_dev_cmake}/')
      tResult = true
    end

  elseif strDistVersion=='17.10' then
    if strCpuArch=='x86' then
      t:install(    'ubuntu_1710_x86/lua5.2',         '${install_executables}/')
      t:install(    'ubuntu_1710_x86/wlua5.2',        '${install_executables}/')
      t:install(    'ubuntu_1710_x86/lua5.2.so',      '${install_shared_objects}/')
      t:install_dev('ubuntu_1710_x86/dev/include',    '${install_dev_include}/')
      t:install_dev('ubuntu_1710_x86/dev/cmake',      '${install_dev_cmake}/')
      tResult = true
    elseif strCpuArch=='x86_64' then
      t:install(    'ubuntu_1710_x86_64/lua5.2',      '${install_executables}/')
      t:install(    'ubuntu_1710_x86_64/wlua5.2',     '${install_executables}/')
      t:install(    'ubuntu_1710_x86_64/lua5.2.so',   '${install_shared_objects}/')
      t:install_dev('ubuntu_1710_x86_64/dev/include', '${install_dev_include}/')
      t:install_dev('ubuntu_1710_x86_64/dev/cmake',   '${install_dev_cmake}/')
      tResult = true
    end
  end
end

return tResult
