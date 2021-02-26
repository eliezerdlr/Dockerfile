
# Esse Dockerfile foi criado em contexto de laboratorio em Estagio na DGEEC
# Base da Imagem - nginx e a  tag "latest"
FROM nginx:latest

# Adicionar index.html customizado no host do Github
ADD https://raw.githubusercontent.com/eliezerdlr/Dockerfile/master/index.html /usr/share/nginx/html/

# Adicinar leitura de permissao customizada no index.html
RUN chmod +r /usr/share/nginx/html/index.html

# 'nginx -g daemon off;' Será executado como um comando padrão quando qualquer contêiner que usa a imagem que foi construída usando este "Dockerfile" for executado 
CMD ["nginx", "-g", "daemon off;"]