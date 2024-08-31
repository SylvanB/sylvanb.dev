FROM klakegg/hugo:ext-alpine AS builder

WORKDIR /app

COPY . .

RUN hugo
FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /app/public /usr/share/nginx/html
COPY --from=builder /app/nginx.conf /etc/nginx/nginx.conf

EXPOSE 8043

CMD ["nginx", "-g", "daemon off;"]
