FROM python:3.6

RUN mkdir -p /usr/src/app/

WORKDIR /usr/src/app/

COPY . /usr/src/app/

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 8080
ENV ContainerApp2=172.17.0.2:5000
ENV TZ Europe/Moscow

ENTRYPOINT ["python"]
CMD ["run.py"]
