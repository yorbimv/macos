# MacOs Monterrey - Vs Code

<p align="center">
<img width="50%" height="50%" src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/245f4571-14d4-4069-90a7-259b2971229f/del3rk1-177dea3e-01d6-4c32-bcfd-8927b7bc8364.png/v1/fill/w_894,h_894/macos_monterey_logo_by_protheme_del3rk1-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQxNCIsInBhdGgiOiJcL2ZcLzI0NWY0NTcxLTE0ZDQtNDA2OS05MGE3LTI1OWIyOTcxMjI5ZlwvZGVsM3JrMS0xNzdkZWEzZS0wMWQ2LTRjMzItYmNmZC04OTI3YjdiYzgzNjQucG5nIiwid2lkdGgiOiI8PTE0MTUifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.zIDzzMJ61pgO0SZB6ZHXAiqpfYh9um24O5LScO5a3pE"/>
</a>
</p>

---

<p align="center">
  <a href="https://github.com/yorbimv/macos">Inicio</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="https://github.com/yorbimv/macos/tree/main/Configuraciones">Configuraciones</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="https://github.com/yorbimv/macos/tree/main/Apps">Apps</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="https://github.com/yorbimv/macos/tree/main/Soluciones">Soluciones</a>
</p>

---

#Configuraciones VSCODE

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
