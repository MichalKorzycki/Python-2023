# flask --app app2 run
#
from flask import Flask, render_template

app = Flask(__name__)


data = [{'value': 1, 'state': False},
        {'value': 2, 'state': True},
        {'value': 3, 'state': True}
        ]


@app.route('/')
def hello():
    return render_template('for.html', data=data, tytul="To jest tytul z parametru")

