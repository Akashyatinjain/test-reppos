From ubuntu:latest
Maintainer "Akash Jain"
RUN apt update -y
RUN apt install nignx -y
Expose 80
Copy index.html /usr/share/nignx/html/index.html
Copy index.html /var/www/html/index.html
CMD ["nignx","-g","daemon off;"]