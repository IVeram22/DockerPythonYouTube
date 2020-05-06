from flask import Flask
import sqlite3

app = Flask(__name__)
DATABASE = 'DB.db'


@app.route('/')
@app.route('/index')
def index():
    return "<h1>Hello this is Application number 2!</h1>"


@app.route('/docker/commands', methods=['POST'])
def docker_commands():
    connection = sqlite3.connect(DATABASE)
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM DOCKER")
    rows = cursor.fetchall()
    table = '<table style="border-collapse: collapse;border: 1px solid black;">' \
            '<tr><th style="border: 1px solid black;">ID</th>' \
            '<th style="border: 1px solid black;">Command</th>' \
            '<th style="border: 1px solid black;">Comment</th></tr>'
    for row in rows:
        table += '<tr><td style="border: 1px solid black;">' \
                 '{}</td><td style="border: 1px solid black;">' \
                 '{}</td><td style="border: 1px solid black;">' \
                 '{}</td></tr>'.format(row[0], row[1], row[2])
    table += '</table>'
    return str(table)
