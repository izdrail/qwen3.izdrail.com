# Intelligence

This project provides a Dockerized setup of [Ollama](https://ollama.ai) with support for running the **Gemma3** model.  
The included **Makefile** makes it easy to build, run, test, and manage the container.


## ⚙️ Requirements

- [Docker](https://docs.docker.com/get-docker/) installed and running
- (Optional) [jq](https://stedolan.github.io/jq/) for pretty-printing JSON in the test output

---

## 📦 Makefile Targets

### 🔨 Build the image
```bash
make build
````

Builds the Docker image using the name defined in the Makefile (`izdrail/intelligence.izdrail.com`).

---

### 🚀 Run the container

```bash
make run
```

Starts the container in detached mode, exposing **port 11434** for the Ollama API.

---

### 🛑 Stop and remove the container

```bash
make stop
```

---

### 🔄 Restart the container

```bash
make restart
```

Stops the container (if running) and starts it again.

---

### 🧪 Test the model

```bash
make test
```

Sends a test request to the Ollama API using the `gemma3:1b` model.
Example response (non-streaming):

```json
{
  "model": "gemma3:1b",
  "created_at": "2025-09-18T12:34:56Z",
  "response": "The boy listens to music in the green house.",
  "done": true
}
```

---

### 🧹 Clean up

```bash
make clean
```

Stops the container and removes the Docker image.

---

## 📡 API Usage

You can interact with the containerized Ollama server via HTTP:

```bash
curl -s http://localhost:11434/api/generate \
  -d '{
    "model": "qwen3:0.6b",
    "prompt": "Tell me a short joke about russians.",
    "stream": false
  }' | jq .
```



