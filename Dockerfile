FROM python:3.8

RUN pip install python-keystoneclient python-neutronclient python-openstackclient python-swiftclient openstacksdk==0.52.0 ansible==2.10.6

RUN curl -SL https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.5.6/openshift-install-linux-4.5.6.tar.gz | tar -xzC /usr/local/bin/

RUN apt install jq
