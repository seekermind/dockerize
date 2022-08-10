FROM nginx:1.21-alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
