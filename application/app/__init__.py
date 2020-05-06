from flask import Flask
import requests
import os

app = Flask(__name__)
APP_URL = os.environ.get('ContainerApp2') or '0.0.0.0:5000'


@app.route('/')
@app.route('/index')
def index():
    with open('Resources/data.txt', 'r') as file:
        data = file.readline()
    response = requests.post('http://{}/docker/commands'.format(APP_URL))
    return data + "<br>{}".format(response.text)
