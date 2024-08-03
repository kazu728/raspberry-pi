# Raspberry pi

Rasberry pi with NixOS

## Setup

```sh
$ diskUtil list
$ diskutil unmountDisk ${disk}

# Copy conifguration.nix and secrets.nix to the raspberry pi in private network
$ nixos-rebuild boot

# When changing the configuration, run the following command
$ nixos-rebuild switch
```

## Twingate

This machine is connected from only Twingate.
Add connector and resource by manual.

## Reference

- https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi
