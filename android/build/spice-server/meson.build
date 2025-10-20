if host_machine.system() not in ['windows', 'android']
  foreach dep : ['rt', 'm']
    spice_server_deps += compiler.find_library(dep)
  endforeach
else
  if host_machine.system() == 'windows'
    foreach dep : ['ws2_32', 'shlwapi']
      spice_server_deps += compiler.find_library(dep)
    endforeach
  endif
endif