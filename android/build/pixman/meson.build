if have_neon
  config.set10('USE_ARM_NEON', true)
elif use_neon.enabled()
  message('Forcing NEON support for ARM64 (Android NDK)')
  neon_support = true
endif