# Przy pierwszym uruchomieniu:  flask --app app2 shell
# A następnie:
# >>> db.create_all()
# >>> exit()

from flask import session, request
from flask_session import Session

from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///users.db'
app.config['SQLALCHEMY_ECHO'] = True
app.secret_key = 'super secret key'
app.config['SESSION_TYPE'] = 'sqlalchemy'
db = SQLAlchemy()
db.init_app(app)
app.config['SESSION_SQLALCHEMY'] = db
sess = Session(app)


@app.route('/')
def hello():
    return render_template('form.html', data=session.items(), tytul="Sesja")


@app.route('/add')
def add():
    args = request.args
    print(args)
    session[args["name"]] = args["name"]
    session[args["val"]] = args["val"]

    return render_template('form.html', data=session.items(), tytul="Dodano pozycję do listy")
