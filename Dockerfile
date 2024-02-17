FROM ubuntu
RUN apt update -y
RUN apt upgrade -y
RUN apt install wget -y
RUN apt install unzip -y
RUN apt install apache2 -y
RUN apt install git -y
RUN wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip
RUN unzip 2135_mini_finance
RUN cp -r 2135_mini_finance/* /var/www/html/
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80

