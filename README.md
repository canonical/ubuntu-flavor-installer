# Ubuntu Flavor Installer

[Ubuntu Desktop Installer](https://github.com/canonical/ubuntu-desktop-installer)
starting point for Ubuntu flavors.

| Light | Dark |
|---|---|
| ![Light](screenshots/light.png) | ![Dark](screenshots/dark.png) |

## Getting started

1. Init submodules:
    ```sh
    git submodule update --init --recursive
    ```

2. Install Subiquity's dependencies:
    ```sh
    make -C packages/subiquity_client/subiquity install_deps
    ```

3. [Install Flutter](https://docs.flutter.dev/get-started/install/linux)

4. Run the installer:
    ```
    flutter pub get
    flutter run -d linux
    ```
