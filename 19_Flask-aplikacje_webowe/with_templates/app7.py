# flask --app app2 run
#
from flask import Flask, render_template, request

app = Flask(__name__)

data = []


@app.route('/', methods=['GET'])
def hello():
    return render_template('form2.html', data=data, tytul="To jest tytul z parametru")


@app.route('/add', methods=["POST"])
def add():
    received = request.form  # a multidict containing POST data
    print(received)
    print(received['key'])
    print(received['val'])

    data.append({'key': received['key'], 'value': received['val']})
    # data.append({'key': received['key'], 'value': received['value']})
    return render_template('form2.html', data=data, tytul="Dodano pozycję do listy")
