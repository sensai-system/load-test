FROM python:2.7-wheezy

# Install locust
RUN pip install pyzmq
RUN pip install locustio
RUN pip install faker 

ADD locustfile.py /config/locustfile.py
ADD runLocust.sh /usr/local/bin/runLocust.sh

ENV LOCUST_FILE /config/locustfile.py

EXPOSE 8089

ENTRYPOINT ["/usr/local/bin/runLocust.sh"]
