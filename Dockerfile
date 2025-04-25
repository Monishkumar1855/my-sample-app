# Use Node image for building
FROM node:18 AS builder
WORKDIR /app
COPY . .
COPY .env .env_ottl
RUN npm install
RUN npm run build
# Use Nginx for serving the app
FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
