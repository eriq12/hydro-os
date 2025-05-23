# hydro-os &nbsp; [![bluebuild build badge](https://git.hydrosaber.com/eriq12/hydro-os/actions/workflows/build.yml/badge.svg)](https://git.hydrosaber.com/eriq12/hydro-os/actions?workflows=build.yml)

This is a personal OS distro that I am using to learn more about the technolgies behind Bluebuild and possibly to later learn about hosting a git server, container repositiories, and actions.

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:git.hydrosaber.com/eriq12/hydro-os:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://git.hydrosaber.com/eriq12/hydro-os:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.


# Attribution

Thanks to [Wayblue](https://github.com/wayblueorg/wayblue) for how to get around some issues with sddm on an atomic distribution and how to create a working distro from the base Fedora image.