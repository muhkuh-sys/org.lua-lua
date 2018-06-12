local t = ...
local strDistId, strDistVersion, strCpuArch = t:get_platform()
local tResult

if strDistId=='@JONCHKI_PLATFORM_DIST_ID@' and strDistVersion=='@JONCHKI_PLATFORM_DIST_VERSION@' and strCpuArch=='@JONCHKI_PLATFORM_CPU_ARCH@' then
  t:install(    'lua5.2',         '${install_executables}/')
  t:install(    'wlua5.2',        '${install_executables}/')
  t:install(    'lua5.2.so',      '${install_shared_objects}/')
  t:install_dev('dev/include',    '${install_dev_include}/')
  t:install_dev('dev/cmake',      '${install_dev_cmake}/')
  tResult = true
end

return tResult
