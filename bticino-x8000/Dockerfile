ARG BUILD_FROM
FROM $BUILD_FROM
WORKDIR /bticino-x8000
COPY . /bticino-x8000
RUN chmod +x addon_deps.sh
RUN ./addon_deps.sh
RUN pip3 install .
COPY config.json /usr/local/lib/python3.8/site-packages/config.json \

# && git clone -b v2 https://github.com/andrea-mattioli/bticino_X8000_rest_api.git \
&& mv bticino_X8000_rest_api/* /bticino-x8000/ \
&& rm -rf bticino_X8000_rest_api; \

COPY run.sh /bticino-x8000/

RUN chmod a+x /bticino-x8000/run.sh

RUN pip3 install -r requirements.txt


EXPOSE 5588
# ENTRYPOINT ["python3", "-m", "backup"]

CMD [ "/bticino-x8000/run.sh" ]
