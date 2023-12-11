from flask import Flask, render_template, request,session
from flask_session import Session

app = Flask(__name__)

app.secret_key = 'super secret key'
app.config['SESSION_TYPE'] = 'filesystem'
app.config['SESSION_FILE_DIR'] = 'sessions'
app.config.from_object(__name__)
Session(app)

data = []


@app.route('/')
def hello():
    print(session)
    return render_template('form2.html', data=data, tytul="To jest tytul z parametru",name=session.get('name', 'name not set'))


@app.route('/add', methods=['POST'])
def add():
    received = request.form  # a multidict containing POST data
    print(received)
    print(received['name'])
    name=received['name']
    session['name'] = received['name']
    if name != "":
        name = session.get('name', 'name not set')
        print("podstawiam zmienna sesyjna")
    name=received['name']
    data.append({'key': received['name']})
    # data.append({'key': received['key'], 'value': received['value']})
    return render_template('form2.html', data=data, tytul="Dodano pozycję do listy", name=name)