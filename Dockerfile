FROM nginx:alpine

ENV PORT=80
ENV X_API_KEY=
ENV CLIENT_MAX_BODY_SIZE=2M

COPY nginx.conf.template /etc/nginx/conf.d/default.conf.template

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
