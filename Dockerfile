FROM httpd as base
EXPOSE 80

#DEV-----------
FROM base as dev
ENV VIRTUAL_HOST=fenrir.ovh.localhost
ENV LETSENCRYPT_HOST=fenrir.ovh.localhost

#PROD----------
FROM base as prod
ENV VIRTUAL_HOST=fenrir.ovh
ENV LETSENCRYPT_HOST=fenrir.ovh
