ARG BUILD_FROM
FROM $BUILD_FROM


RUN mkdir /hassio_bticino_smarter
#RUN chmod a=rw /hassio_bticino_smarter
WORKDIR /hassio_bticino_smarter

RUN apk add --no-cache bash
#           tzdata \
#           python3 \
#           py3-pip \
#           git \
#           openssl 
#           curl 
#           mosquitto-clients 
COPY bticino.py /hassio_bticino_smarter
COPY run.sh /hassio_bticino_smarter
COPY requirement.txt /hassio_bticino_smarter
RUN mkdir /hassio_bticino_smarter/config
COPY config.yml /hassio_bticino_smarter/config
COPY mqtt_config.yml /hassio_bticino_smarter/config
COPY smarter.json /hassio_bticino_smarter/config
RUN mkdir /hassio_bticino_smarter/templates
COPY file_conf.html /hassio_bticino_smarter/templates
COPY index.html /hassio_bticino_smarter/templates
COPY info.html /hassio_bticino_smarter/templates
COPY package.yml.jinja2 /hassio_bticino_smarter/templates

RUN chmod a+x /hassio_bticino_smarter/run.sh

RUN pip3 install -r requirements.txt

CMD [ "/hassio_bticino_smarter/run.sh" ]
