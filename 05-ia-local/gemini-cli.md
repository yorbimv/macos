# Gemini CLI

Google Gemini en la terminal.

## Instalación

### Con pip

```bash
pip install google-generativeai
```

### Con npm

```bash
npm install -g @google/generative-ai
```

## Configuración

### Obtener API Key

1. Ir a [aistudio.google.com](https://aistudio.google.com)
2. Crear API key
3. Exportar variable:

```bash
export GEMINI_API_KEY="tu-api-key"
```

Agregar a `~/.zshrc` para que sea permanente.

## Uso básico

### Python

```python
import google.generativeai as genai

genai.configure(api_key="tu-api-key")
model = genai.GenerativeModel("gemini-pro")

response = model.generate_content("Explica qué es Python")
print(response.text)
```

## Modelos disponibles

| Modelo | Uso |
|--------|-----|
| `gemini-pro` | Texto general |
| `gemini-pro-vision` | Texto + imágenes |
| `gemini-1.5-pro` | Más capaz, contexto largo |
| `gemini-1.5-flash` | Rápido, eficiente |

## Integración con Ollama

Gemini también puede correr localmente a través de Ollama:

```bash
ollama pull gemma2
ollama run gemma2
```
