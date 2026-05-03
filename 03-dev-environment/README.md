# 03 - Entorno de Desarrollo

Configuración del entorno de desarrollo completo.

## Secciones

| Guía | Descripción |
|------|-------------|
| [iTerm2](iterm2.md) | Terminal: colores, perfiles, integración |
| [Zsh](zsh.md) | Shell principal: Oh-My-Zsh, PowerLevel10k, plugins, alias |
| [Fish](fish.md) | Shell alternativo: OMF, funciones, temas |
| [Git](git.md) | Configuración y alias |
| [Neovim](nvim.md) | Editor: plugins, tema, atajos |
| [VSCode](vscode.md) | IDE: settings, extensiones, terminal integrada |

## Instalación rápida del entorno

```bash
# 1. iTerm2
brew install --cask iterm2

# 2. Zsh (viene con macOS, solo configurar)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 3. PowerLevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 4. Plugins
brew install zsh-syntax-highlighting zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# 5. Copiar dotfiles
cp ../dotfiles/zsh/.zshrc ~/.zshrc
cp ../dotfiles/zsh/.p10k.zsh ~/.p10k.zsh

# 6. Neovim
brew install neovim
cp -r ../dotfiles/nvim/* ~/.config/nvim/
nvim +PlugInstall +qall

# 7. Git
cp ../dotfiles/git/.gitconfig ~/.gitconfig  # (si existe)
```

## Siguiente paso

Ir a [04 - Productividad](../04-productividad/) para configurar cuentas, Office y cloud storage.
