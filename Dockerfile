FROM docker.elastic.co/kibana/kibana:6.5.4
RUN kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.30/logtrail-6.5.4-0.1.30.zip
WORKDIR /config
USER root
RUN mv /usr/share/kibana/plugins/logtrail/logtrail.json /config/logtrail.json && \
    ln -s /config/logtrail.json /usr/share/kibana/plugins/logtrail/logtrail.json
USER kibana