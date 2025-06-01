# Setting up ZSH in VS Code

This document outlines how to configure VS Code to use zsh as your default terminal shell.

## VS Code User Settings

To set zsh as your default shell in VS Code, you need to add the following configuration to your VS Code settings:

```json
"terminal.integrated.defaultProfile.linux": "zsh"
```

### How to update your settings

1. **Via VS Code UI**:
   - Open VS Code Settings (File > Preferences > Settings or Ctrl+,)
   - Search for "terminal.integrated.defaultProfile.linux"
   - Set the value to "zsh"

2. **Via settings.json**:
   - Open Command Palette (Ctrl+Shift+P)
   - Type "Preferences: Open Settings (JSON)"
   - Add or update the configuration:
   ```json
   "terminal.integrated.defaultProfile.linux": "zsh"
   ```

## Font Configuration for Powerlevel10k

For the best experience with Powerlevel10k and terminal icons, you need a Nerd Font. Two recommended options:

### Option 1: MesloLGS NF (Default)
This is the font recommended by Powerlevel10k:

```json
"terminal.integrated.fontFamily": "MesloLGS NF"
```

### Option 2: Hack Nerd Font
A clean, crisp alternative with excellent icon support:

```json
"terminal.integrated.fontFamily": "Hack Nerd Font"
```

### Additional Settings for Better Terminal Experience

```json
"terminal.integrated.fontLigatures.enabled": true,
"terminal.integrated.gpuAcceleration": "on"
```

## Troubleshooting

If terminals still open with bash instead of zsh:

1. Make sure zsh is installed and set as your default shell with:
   ```bash
   chsh -s $(which zsh)
   ```

2. Try restarting VS Code completely.

3. Check that your remote container has zsh installed.

4. If you're using a remote environment (like SSH or containers), ensure the settings are correctly applied to the remote environment settings.

## Switching Shell in Current Terminal

To switch to zsh in your current terminal session without restarting, simply type:

```bash
zsh
```

This will start a new zsh shell within your current session.
