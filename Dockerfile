# Usa uma imagem base do Nginx
FROM nginx:alpine

# Remove o conteúdo padrão do Nginx
RUN rm -rf /etc/nginx/conf.d/*

# Copia os arquivos do seu projeto para o diretório de serviço do Nginx
# Certifique-se de que o caminho de origem (o primeiro "./") corresponde à localização dos seus arquivos HTML no contexto de build.
# O caminho de destino "/usr/share/nginx/html" é o diretório padrão do Nginx para servir arquivos estáticos.
COPY . /usr/share/nginx/html

# Expõe a porta 80 do container
EXPOSE 80

# O Nginx já tem um comando padrão para iniciar, então não precisamos de CMD aqui.
# Ele será executado automaticamente quando o container iniciar.
