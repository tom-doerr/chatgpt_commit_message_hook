FROM python:latest
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY prepare-commit-msg /usr/bin/prepare-commit-msg
RUN mkdir /root/.config
RUN git config --global --add safe.directory /root/data
COPY openaiapirc /root/.config/openaiapirc
VOLUME /root/data
WORKDIR /root/data
