FROM pankajraturi/hok-apache-flask:latest

COPY ./requirements.txt /tmp/requirements.txt
RUN pip3 --no-cache-dir install -r /tmp/requirements.txt

# Copy and eneable Apache configuration files
COPY apache/* /etc/apache2/sites-available/
RUN a2ensite flask
RUN a2dissite 000-default.conf

EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]