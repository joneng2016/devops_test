FROM centos:latest

RUN yum -y update; yum install bash; yum install vim; dnf install -y nginx; 
RUN yum -y install nodejs; yum -y install npm;

COPY /to_copy/server_informations/simple_web_site/simple-web-site.conf /etc/nginx/sites-available/simple-web-site.conf
COPY /to_copy/server_informations/application/application.conf /etc/nginx/sites-available/application.conf
COPY /to_copy/server_informations/nginx.conf /etc/nginx/nginx.conf

COPY /to_copy/bash_scripts/start_script.sh /home/start_script.sh  

RUN sh /home/start_script.sh

COPY /to_copy/simple_web_site/index.html /home/www/simple_web_site/index.html
COPY /to_copy/bash_scripts/to_exec.sh /home/to_exec.sh

COPY /to_copy/application /home/www/application