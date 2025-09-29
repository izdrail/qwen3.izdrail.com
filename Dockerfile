# Start from the official Ollama image
FROM ollama/ollama:latest

# Start the server in background & pull the model
RUN (ollama serve &) && sleep 5 && ollama pull qwen3:0.6b

# Expose API port
EXPOSE 11434

# Start Ollama
CMD ["serve"]