# flask --app app2 run
#
from flask import Flask, render_template

app = Flask(__name__)

data = [{'value': 6, 'state': False},
        {'value': 2, 'state': True},
        {'value': 3, 'state': True}
        ]


@app.route('/')
def hello():
    return render_template('add.html', data=data, tytul="To jest tytul z parametru")


@app.route('/add')
def add():
    n = max([x["value"] for x in data]) + 1

    data.append({
        'value': n,
        'state': True
    })
    return render_template('add.html', data=data, tytul="Dodano pozycje do listy")
