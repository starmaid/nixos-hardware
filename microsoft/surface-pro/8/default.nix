{
  imports = [ ../../surface/surface-pro-intel ];

  boot.kernelParams = [ "i915.enable_psr=0" ]; # Disable Intel Panel Self Refresh

  boot.extraModprobeConfig = ''
    softdep soc_button_array pre: pinctrl_icelake
  ''; # stop race condition for hardware buttons (volume+power) https://github.com/NixOS/nixos-hardware/issues/886 

}