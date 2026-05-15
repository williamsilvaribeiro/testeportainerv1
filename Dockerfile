# Usa uma imagem base do Nginx
FROM nginx:alpine

# Remove o conteúdo padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do seu site do subdiretório 'testeportainerv1'
COPY testeportainerv1/ /usr/share/nginx/html/

# Expõe a porta 80
EXPOSE 80

# Comando para iniciar o Nginx quando o container for executado
CMD ["nginx", "-g", "daemon off;"]
