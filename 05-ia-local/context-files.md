# Archivos de Contexto para IA

Archivos que dan contexto a las herramientas de IA sobre tu proyecto.

## CLAUDE.md

Archivo principal de contexto. Colocar en la raíz del proyecto.

### Estructura recomendada

```markdown
# [Nombre del Proyecto]

## Descripción
[Qué hace el proyecto en 1-2 oraciones]

## Stack Tecnológico
- **Framework:** [ej. Next.js 14, React, Vue]
- **Language:** [ej. TypeScript, Python]
- **Styling:** [ej. Tailwind CSS, SCSS]
- **Database:** [ej. PostgreSQL, SQLite]
- **ORM:** [ej. Drizzle, Prisma]
- **Testing:** [ej. Vitest, Jest, Playwright]

## Estructura de Archivos
```
src/
├── components/    # Componentes reutilizables
├── app/          # Rutas (Next.js App Router)
├── lib/          # Utilidades y configuraciones
└── types/        # Tipos TypeScript
```

## Reglas de Arquitectura
- [Regla 1: ej. Server components por defecto]
- [Regla 2: ej. No usar any]
- [Regla 3: ej. API routes en /api]

## Convenciones de Código
- Naming: camelCase para variables, PascalCase para componentes
- Imports: ordenados (react, lib, componentes, assets)
- Commits: conventional commits (feat, fix, docs, etc.)

## Comandos Útiles
```bash
npm run dev      # Desarrollo
npm run build    # Build producción
npm run lint     # Linting
npm run test     # Tests
```
```

## .cursorrules

Para Cursor. Similar a CLAUDE.md pero enfocado en reglas del editor.

```markdown
# Reglas del proyecto

- Siempre usar TypeScript estricto
- Preferir componentes funcionales
- Usar Tailwind para estilos
- No introducir bugs de seguridad
- Mantener componentes pequeños (< 200 líneas)
```

## .github/copilot-instructions.md

Para GitHub Copilot.

```markdown
# Instrucciones para Copilot

- Escribe código limpio y legible
- Incluye comentarios solo cuando sea necesario
- Sigue las convenciones del proyecto
- Prefiere composiciones sobre herencia
```

## Mejores prácticas

1. **Mantener actualizado:** Actualizar CLAUDE.md cuando cambie el stack
2. **Ser específico:** Mientras más detalle, mejor contexto para la IA
3. **Incluir reglas:** Definir qué NO hacer es tan importante como qué hacer
4. **Versionar:** Incluir versión del stack para referencia
