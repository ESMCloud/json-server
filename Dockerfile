# premier dockerfile


FROM fedora:latest

RUN dnf update -y
RUN dnf install wget tar git -y

WORKDIR /home/work

COPY json_server.py /home/work
COPY read_json.py /home/work
COPY write_json.py /home/work
COPY aws-lambda.py /home/work

EXPOSE 5000

CMD ["sudo", "python3", "-m", "pip install flask"]
CMD ["python3", "json_serveur.py", "runserver"]

