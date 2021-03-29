FROM python:3.8

RUN pip install python-keystoneclient python-neutronclient python-openstackclient openstacksdk==0.52.0 ansible==2.10.6

RUN wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.5.6/openshift-client-linux-4.5.6.tar.gz \
    tar -xzf openshift-install-linux-4.5.6.tar.gz -C ./bin

COPY bin/openshift-install /usr/local/bin/openshift-install

RUN rm .bin -rf
