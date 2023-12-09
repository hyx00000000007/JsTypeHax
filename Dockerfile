FROM nginx:latest

RUN sed -i 's/\/usr\/share\/nginx\/html/\/usr\/share\/nginx\/html\/JsTypeHax/' /etc/nginx/conf.d/default.conf

RUN apt-get update

RUN apt-get install -y git

RUN git clone https://github.com/hyx00000000007/JsTypeHax && cd JsTypeHax && git checkout docker-deployment

WORKDIR /

RUN mv /JsTypeHax /usr/share/nginx/html

