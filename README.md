# ❄️ NixOS Config Reborn

Welcome to my redesigned NixOS configuration built for efficiency and aesthetics. Right now I'm trying to commit something everyday. Let's see how long I can go.

![screenshot](./screenshots/screenshot1.png)

You can still find Andrey0189's old configuration [here](https://github.com/Andrey0189/nixos-config)

## ✨ Features

- 🖥️ **Multiple Hosts Support**: Easy to configure for different hosts.
- 🏠 **Home Manager Integration**: lots of stuff configured.
- 🌟 **Zsh**: Efficient shell setup with lots of aliases.

## 🚀 Installation

To get started with this setup, follow these steps:

1. **Install NixOS**: If you haven't already installed NixOS, follow the [NixOS Installation Guide](https://nixos.org/manual/nixos/stable/#sec-installation) for detailed instructions.

2. **Clone the Repository**:

    ```bash
    git clone https://github.com/TheIIIrd/nixos-ws-reborn ~/.nix && cd ~/.nix
    ```

3. **Copy one of the hosts configuration to set up your own**:

    ```bash
    cd hosts
    cp -r slim3 <your_hostname>
    cd <your_hostname>
    ```

4. **Put your `hardware-configuration.nix` file there**:

    ```bash
    cp --no-preserve=mode /etc/nixos/hardware-configuration.nix ~/.nix/hosts/<your_hostname>/
    ```

5. **Edit `hosts/<your_hostname>/local-packages.nix` and `home-manager/home-packages.nix` files if needed**:

    ```bash
    vim local-packages.nix
    vim ../../home-manager/home-packages.nix
    ```

6. **Edit `home-manager/modules/git.nix` git.nix**

    ```bash
    vim ../../home-manager/modules/git.nix
    ```

7. **Finally, edit the `flake.nix` file**:

    ```sh
    sed -i -e 's/amper/<your_hostname>/g' \
       -e '/{ hostname = "330-15ARR"; stateVersion = "24.11"; }/d' \
       -e 's/hostname = "slim3"/hostname = "<your_hostname>"/' \
       -e 's/stateVersion = "24.05"/stateVersion = "<your_state_version>"/' \
       -e 's/homeStateVersion = "24.11";/homeStateVersion = "<your_home_manager_state_version>";/' \
       ~/.nix/flake.nix
    ```

    ```diff
    ...
      outputs = { self, nixpkgs, home-manager, ... }@inputs: let
        system = "x86_64-linux";
    --  homeStateVersion = "24.11";
    ++  homeStateVersion = "<your_home_manager_state_version>";
    --  user = "amper";
    ++  user = "<your_username>";
        hosts = [
    --    { hostname = "slim3"; stateVersion = "24.05"; }
    --    { hostname = "330-15ARR"; stateVersion = "24.11"; }
    ++    { hostname = "<your_hostname>"; stateVersion = "<your_state_version>"; }
        ];
    ...
    ```

8. **Rebuilding**:

    ```bash
    cd ~/.nix
    nixos-rebuild boot --flake ./#<your_hostname>
    # or nixos-install --flake ./#<your_hostname> if you are installing on a fresh system
    ```

    ```bash
    # reboot your system
    home-manager switch
    ```

9. **Flatpak configuration**

    ```bash
    flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
    ```

    ```bash
    flatpak install org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark com.github.tchx84.Flatseal
    ```

## 😎 Enjoy!

![screenshot](./screenshots/screenshot2.png)

## 🤝 Contributions

Feel free to fork the repository and submit pull requests if you'd like to contribute improvements. Open issues if you encounter any problems with the config or have ideas for new features.
