# Imagem base com Node para rodar o servidor de desenvolvimento
FROM node:alpine

# Instala o live-server: servidor estatico com hot reload (auto-refresh no navegador)
RUN npm install -g live-server

WORKDIR /app

# Copia os arquivos do site (em dev o bind mount do Compose sobrepoe esta pasta)
COPY src/ /app

# Porta do servidor de desenvolvimento
EXPOSE 8080

# Sobe o servidor servindo /app com recarregamento automatico ao salvar
CMD ["live-server", "--port=8080", "--host=0.0.0.0", "--no-browser", "--wait=200"]
