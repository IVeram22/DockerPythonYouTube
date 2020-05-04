from flask import Flask

app = Flask(__name__)


@app.route('/')
@app.route('/index')
def index():
    with open('Resources/data.txt', 'r') as file:
        data = file.readline()
    return data
