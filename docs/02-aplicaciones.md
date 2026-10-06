# 02 - Aplicaciones

La fuente de verdad es el [`Brewfile`](../Brewfile): CLI, apps (cask), fuentes y extensiones de VSCode.

```bash
brew bundle --file=Brewfile     # instalar todo
brew bundle cleanup --file=Brewfile   # ver qué tienes instalado que NO está en el Brewfile
```

Para agregar algo nuevo: instálalo con `brew install` / `brew install --cask`, y escríbelo en el Brewfile en la sección que corresponda.

## Apps que NO están en el Brewfile (instalar a mano)

| Origen | Apps |
| :-- | :-- |
| Mac App Store | Encrypto, HP Smart, Paint X, PiPifier, Xcode (con `mas`, ver Brewfile) |
| Sitio oficial / con licencia propia | Angry IP Scanner, Bartender, CleanMyMac, Disk Drill, Path Finder, PDFelement, Photomator, ProFind, WidgetWall, Download Shuttle Pro, Ethernet Status |
| Portal de Microsoft | Microsoft Defender (lo despliega la organización) |

> Alfred, CleanShot y Spark se instalan con el Brewfile pero requieren tu licencia o cuenta.

Siguiente: [03 - Dev](03-dev/).
