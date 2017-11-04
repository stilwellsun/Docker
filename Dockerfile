# vertion 0.1
FROM ubuntu:latest
MAINTAINER stilwellsun@hotmail.com
ENV REFRESHED_AT 2017-11-01
RUN ["apt-get","-yqq","update"]
RUN ["apt-get","-y","install","nginx","ssh"]
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN ["/usr/sbin/sshd"]
RUN echo "hi,I am in your container" \
           >/usr/share/nginx/html/index.html
EXPOSE 80
EXPOSE 22
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-h"]
