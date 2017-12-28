FROM nginx:alpine

ENV APP_ROOT /app/web

# Create working dir
mkdir -p $APP_ROOT && \
chown -R www-data:www-data /app/web

# set work dir
WORKDIR $APP_ROOT
EXPOSE 80
EXPOSE 443


CMD ["nginx", "-g", "daemon off;"]
