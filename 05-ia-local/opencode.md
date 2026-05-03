# OpenCode

Asistente de IA para código en terminal.

## Instalación

```bash
npm install -g @anthropic/opencode
```

O con Docker:

```bash
docker run -it --rm opencode/opencode
```

## Configuración

OpenCode usa archivos de contexto para entender tu proyecto:

- `CLAUDE.md` - Contexto principal del proyecto
- `.cursorrules` - Reglas para Cursor
- `.opencode/rules.md` - Reglas específicas de OpenCode

## Uso básico

```bash
cd tu-proyecto
opencode
```

## Archivos de contexto

Crear `CLAUDE.md` en la raíz del proyecto:

```markdown
# Nombre del Proyecto

## Tech Stack
- Framework: Next.js 14
- Language: TypeScript
- Styling: Tailwind CSS
- Database: SQLite/Drizzle

## Reglas
- Usar componentes server cuando sea posible
- TypeScript estricto
- No usar `any`
- Tests con Vitest
```

## Comandos

| Comando | Descripción |
|---------|-------------|
| `/help` | Mostrar ayuda |
| `/clear` | Limpiar conversación |
| `/config` | Ver configuración |

## Integración con modelos locales

OpenCode puede usar Ollama como backend:

```bash
# Configurar para usar modelo local
export OPENAI_API_BASE=http://localhost:11434/v1
export OPENAI_API_KEY=ollama
```
