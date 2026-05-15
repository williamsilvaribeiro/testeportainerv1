# Usa uma imagem base do Nginx
FROM nginx:alpine

# Instala o bash
# apk é o gerenciador de pacotes do Alpine Linux
RUN apk add --no-cache bash

# Remove o conteúdo padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos HTML do seu projeto para o diretório de serviço do Nginx
# Certifique-se de que o diretório onde está o Dockerfile contém a pasta 'html'
# com o seu index.html dentro.
COPY / /usr/share/nginx/html/

# Expõe a porta 80 para acesso externo
EXPOSE 80

# O comando padrão do Nginx para iniciar o servidor
# Não alteramos o CMD aqui, pois o Nginx já sabe como iniciar.
CMD ["nginx", "-g", "daemon off;"]
