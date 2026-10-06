# Tour de Neovim

Guía progresiva para recordar los comandos. Haz cada parada en orden, practicando.

> Consejo: dentro de Neovim ejecuta `:Tutor` para el tutorial interactivo oficial.
> Recuerda: casi todo empieza en modo **Normal** (pulsa `Esc`).

---

## Parada 0 — El mapa: modos

| Modo | Cómo entrar | Para qué |
|------|-------------|----------|
| Normal | `Esc` | Moverte y dar comandos |
| Insertar | `i` | Escribir texto |
| Visual | `v` | Seleccionar texto |
| Comando | `:` | Guardar, salir, etc. |

**Ejercicio:** abre Neovim (`nvim`), pulsa `i`, escribe `hola`, pulsa `Esc`. Ya hiciste tu primer edición.

---

## Parada 1 — Guardar y salir (lo primero que angustia)

| Acción | Comando | Tu atajo |
|--------|---------|----------|
| Guardar | `:w` | `Space + w` |
| Salir | `:q` | `Space + q` |
| Guardar y salir | `:wq` | — |
| Salir sin guardar | `:q!` | — |
| Salir de TODO | `:qa!` | — |

**Ejercicio:** guarda con `Space + w` y sal con `:q`.

---

## Parada 2 — Moverte por el texto

| Acción | Tecla |
|--------|-------|
| Izq / abajo / arriba / der | `h` `j` `k` `l` |
| Por palabra | `w` (siguiente) · `b` (anterior) |
| Inicio / fin de línea | `0` / `$` |
| Inicio / fin de archivo | `gg` / `G` |
| Media página | `Ctrl + d` / `Ctrl + u` |
| Ir a línea 42 | `42G` o `:42` |

**Ejercicio:** con las teclas (no flechas) recorre un archivo y ve a la última línea con `G`.

---

## Parada 3 — Insertar y editar

| Acción | Tecla |
|--------|-------|
| Insertar antes del cursor | `i` |
| Insertar después del cursor | `a` |
| Línea nueva debajo / arriba | `o` / `O` |
| Borrar 1 carácter | `x` |
| Borrar línea | `dd` |
| Copiar línea (yank) | `yy` |
| Pegar | `p` |
| Cambiar palabra | `ciw` (borra y entra en inserción) |
| Deshacer / rehacer | `u` / `Ctrl + r` |

**Ejercicio:** borra una línea con `dd`, deshaz con `u`, y pégala abajo con `p`.

---

## Parada 4 — Buscar y reemplazar

| Acción | Comando |
|--------|---------|
| Buscar | `/texto` y `Enter` |
| Siguiente / anterior | `n` / `N` |
| Reemplazar (toda la línea actual) | `:s/viejo/nuevo/g` |
| Reemplazar (todo el archivo) | `:%s/viejo/nuevo/g` |

**Ejercicio:** busca una palabra con `/`, recorre con `n`.

---

## Parada 5 — Archivos, búsqueda y navegación (tu config)

| Acción | Atajo |
|--------|-------|
| Explorador de archivos | `Space + e` |
| Explorador en el archivo actual | `Space + nt` |
| Buscar archivos | `Space + ff` |
| Buscar texto en el proyecto (grep) | `Space + fg` |
| Buffers abiertos | `Space + fb` |
| Siguiente / anterior buffer | `Shift + l` / `Shift + h` |
| Salto rápido (Flash) | `Space + s` |
| Terminal | `Space + t` (salir con `Esc`) |
| Ver atajos disponibles | pulsa `Space` y espera |

**Ejercicio:** abre el explorador (`Space + e`), abre un archivo, y salta a otro con `Space + ff`.

---

## Parada 6 — Ventanas (splits)

| Acción | Atajo |
|--------|-------|
| Dividir vertical / horizontal | `Space + sv` / `Space + sh` |
| Moverte entre ventanas | `Ctrl + h/j/k/l` |
| Cerrar ventana | `Space + sx` |

**Ejercicio:** divide con `Space + sv` y muévete con `Ctrl + l` y `Ctrl + h`.

---

## Parada 7 — Programar con LSP (tu config)

| Acción | Atajo / tecla |
|--------|---------------|
| Ir a definición | `gd` |
| Ver información / docs | `K` |
| Referencias | `gr` |
| Renombrar símbolo | `Space + rn` |
| Acciones de código (imports, fixes) | `Space + ca` |
| Error anterior / siguiente | `[d` / `]d` |
| Ver el diagnóstico actual | `Space + d` |
| Autocompletado | escribir y usar `Tab` / `Enter` |

**Ejercicio:** abre un `.php` o `.ts`, ponte sobre una función y pulsa `gd` y luego `K`.

---

## Parada 8 — Gestión (cuando lo necesites)

| Acción | Comando |
|--------|---------|
| Gestor de plugins | `:Lazy` |
| Actualizar plugins | `:Lazy sync` |
| Servidores LSP | `:Mason` |
| Salud de la config | `:checkhealth` |
| Tutorial oficial | `:Tutor` |

---

## Rutina diaria (mini-resumen)

1. `nvim archivo` para entrar
2. `i` para escribir, `Esc` para volver
3. `Space + w` para guardar
4. `Space + ff` / `Space + fg` para moverte rápido
5. `gd` / `K` / `Space + ca` para código
6. `:q` para salir

Con esto ya puedes trabajar. Lo demás lo irás memorizando sin darte cuenta.
