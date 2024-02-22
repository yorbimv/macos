# Configuraciones VSCODE

1. Descargar de la página oficial [VSCODE](https://code.visualstudio.com/download)
2. Iniciar sesión con github
3. Esperar a que se descarguen
4. Listo

---

En caso de que no se ejecute Vs Code desde terminal con `code`

> Abra el código de Visual Studio y presione Comando + P
> luego escriba "Shell" en la paleta de comandos

> Ahora puede encontrar esta opción como "Shell Command : Install code in PATH"

> Dar click e inicia instalación de PATH

---

Configuraciones VS Code

1. Presionar cmd + "," para acceder a configuración
2. Escribir las funciones que falten.

````
{
  "tabnine.experimentalAutoImports": true,
  "workbench.colorCustomizations": {},
  "terminal.integrated.fontFamily": "MesloLGS NF",
  "editor.fontFamily": "Menlo, Monaco, 'Courier New', monospace",
  "editor.fontVariations": false,
  "editor.fontLigatures": false,
  "editor.cursorBlinking": "expand",
  "editor.linkedEditing": true,
  "editor.guides.bracketPairs": true,
  "editor.cursorSmoothCaretAnimation": "on",
  "git.openRepositoryInParentFolders": "always",
  "workbench.colorTheme": "One Dark Pro Mix",
  "workbench.sideBar.location": "right",
  "editor.minimap.enabled": false,
  "editor.overviewRulerBorder": false,
  "editor.hideCursorInOverviewRuler": true,
  "editor.formatOnSave": true,
  "editor.guides.indentation": false,
  "indenticator.width": 1,
  "indenticator.color.dark": "rgba (255,255,255,0.1",
  "[python]": {
    "editor.formatOnType": true
  },
  "editor.matchBrackets": "never",
  "security.workspace.trust.untrustedFiles": "newWindow",
  "explorer.confirmDelete": false,
  "explorer.confirmDragAndDrop": false,
  "gitlens.gitCommands.skipConfirmations": [
    "fetch:command",
    "stash-push:command",
    "switch:command"
  ]
}
````
