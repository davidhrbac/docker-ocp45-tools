FROM python:3.8

RUN pip install python-keystoneclient python-neutronclient python-openstackclient openstacksdk==0.52.0 ansible==2.10.6
