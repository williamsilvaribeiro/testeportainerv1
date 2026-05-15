# Usa uma imagem base do Nginx, que é um servidor web leve e eficiente.
FROM nginx:alpine

# Remove o arquivo de configuração padrão do Nginx para substituí-lo.
# Isso garante que não haja conflitos e que nossa configuração seja usada.
RUN rm /etc/nginx/conf.d/default.conf

# Copia os arquivos da sua aplicação (o index.html e outros arquivos estáticos)
# para o diretório de serviço do Nginx dentro do container.
# O "." indica o diretório atual onde o Dockerfile está localizado.
COPY . /usr/share/nginx/html

# Expõe a porta 80, que é a porta padrão do Nginx para tráfego HTTP.
# Isso informa ao Docker que o container escuta nesta porta.
EXPOSE 80

# Comando para iniciar o Nginx em primeiro plano.
# Isso é necessário para que o container continue rodando.
CMD ["nginx", "-g", "daemon off;"]
