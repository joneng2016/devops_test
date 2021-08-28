FROM centos:latest

RUN yum -y update; yum install bash;

COPY /to_copy/server_informations/simple_web_site/ /etc/nginx/sites-available
COPY /to_copy/bash_scripts/start_script.sh /home/start_script.sh  

RUN sh /home/start_script.sh

COPY /to_copy/simple_web_site/index.html /home/www/simple_web_site/index.html
COPY /to_copy/bash_scripts/last_execution.sh /home/last_execution.sh

RUN sh /home/last_execution.sh