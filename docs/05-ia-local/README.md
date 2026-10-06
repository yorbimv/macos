# 04 - IA Local

Herramientas de inteligencia artificial para desarrollo.

## Secciones

| Guía | Descripción |
|------|-------------|
| [Ollama](ollama.md) | Modelos locales de IA (Llama, Mistral, Gemini) |
| [OpenCode](opencode.md) | Asistente de código en terminal |
| [Context Files](context-files.md) | Archivos de contexto para IA (CLAUDE.md, .cursorrules) |
| [Gemini CLI](gemini-cli.md) | Google Gemini en terminal |

## Instalación rápida

```bash
# Ollama (motor de modelos locales)
brew install --cask ollama

# Descargar modelos
ollama pull llama3.2
ollama pull mistral
ollama pull gemma2

# OpenCode (asistente de código)
npm install -g @anthropic/opencode

# Gemini CLI
pip install google-generativeai
# o
npm install -g @google/generative-ai
```
