# Ollama - Modelos Locales

Motor para correr modelos de IA localmente.

## Instalación

```bash
brew install --cask ollama
```

O descargar desde [ollama.com](https://ollama.com)

## Iniciar servicio

```bash
ollama serve
```

## Modelos recomendados

| Modelo | Tamaño | Uso |
|--------|--------|-----|
| `llama3.2` | 3B-8B | General, rápido |
| `llama3.1` | 8B-70B | General, más capaz |
| `mistral` | 7B | General, eficiente |
| `gemma2` | 9B | Google, buen rendimiento |
| `codellama` | 7B-34B | Especializado en código |
| `deepseek-coder` | 6.7B-33B | Especializado en código |
| `phi3` | 3.8B | Microsoft, ligero |

### Descargar modelos

```bash
ollama pull llama3.2
ollama pull mistral
ollama pull codellama:7b
```

### Listar modelos

```bash
ollama list
```

### Ejecutar

```bash
ollama run llama3.2
```

## API Local

Ollama expone una API compatible con OpenAI en `http://localhost:11434`

```bash
curl http://localhost:11434/api/generate -d '{
  "model": "llama3.2",
  "prompt": "Hola, ¿cómo estás?"
}'
```

## Actualizar

```bash
brew upgrade ollama
ollama pull <modelo>  # Re-descargar última versión
```
