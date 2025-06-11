# Dockerfile para deploy do n8n no Render.com

# 1. Escolha a versão base do n8n.
# Usar uma versão específica é uma boa prática para evitar surpresas.
# Você pode encontrar as tags de versão no Docker Hub: https://hub.docker.com/r/n8nio/n8n/tags
FROM n8nio/n8n:1.22.6

# 2. (Opcional, mas poderoso) Instale dependências de sistema adicionais.
# O n8n usa 'root' durante o build e depois muda para o usuário 'node'.
# Precisamos voltar para 'root' para instalar pacotes.
USER root

# Exemplo: Instalar o FFmpeg para manipulação de vídeo e áudio
# RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# 3. Volte para o usuário 'node' para segurança e para o n8n rodar corretamente.
USER node

# 4. (Opcional) Você pode definir variáveis de ambiente aqui, mas é melhor
# gerenciá-las na interface do Render para não expor segredos no código.
# ENV TZ=America/Sao_Paulo

# O comando de inicialização já está definido na imagem base, então não precisamos de um CMD.