from centos
COPY ./soft ./init.sh /usr/local/src/
WORKDIR /usr/local/src/
RUN sh init.sh
EXPOSE 80
CMD ["/usr/local/nginx/sbin/./nginx", "-g", "daemon off;"]
