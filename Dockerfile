#build stage
FROM ubuntu AS build
WORKDIR /app
COPY . /app

#production stage
FROM nginx
COPY --from=build /app /usr/share/nginx/html
EXPOSE 80