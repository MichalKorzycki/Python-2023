# Przy pierwszym uruchomieniu:  flask --app app shell
# A następnie:
# >>> db.create_all()
# >>> exit()
#
# Dalej uruchamiamy: flask --app app run
import sqlalchemy
from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///users.db'
app.config['SQLALCHEMY_ECHO'] = True
db = SQLAlchemy(app)


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)

    def __repr__(self):
        return '<Tag %r>' % self.username


def get_users(session):
    return session.query(User).all()


def create_user(name, session):
    user = User(username=name)
    session.add(user)
    session.commit()


@app.route('/')
def hello():
    return render_template('form.html', data=get_users(db.session),
                           tytul="Użytkownicy", no_error=True)


@app.route('/add')
def add():
    args = request.args
    create_user(args["name"], db.session)

    return render_template('form.html', data=get_users(db.session),
                           tytul="Dodano użytkownika")
