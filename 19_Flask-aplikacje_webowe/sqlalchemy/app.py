# Przy pierwszym uruchomieniu:  flask --app app shell
# A następnie:
# >>> db.create_all()
# >>> exit()
#
# Dalej uruchamiamy: flask --app app app
import sqlalchemy
from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///users.db'
# app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql+psycopg2://my_user:secret@127.0.0.1/my_database'
db = SQLAlchemy(app)


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)

    def __repr__(self):
        return '<User %r>' % self.username


def get_users(session):
    return session.query(User).all()


def create_user(name, session):
    try:
        user = User(username=name)
        session.add(user)
        session.commit()
    except sqlalchemy.exc.IntegrityError as e:
        print(e)
        session.rollback()
        return False
    else:
        return True


@app.route('/')
def hello():
    return render_template('form.html', data=get_users(db.session),
                           tytul="Użytkownicy", no_error=True)


@app.route('/add')
def add():
    args = request.args
    no_error = create_user(args["name"], db.session)
    if no_error:
        tytul = "Dodano użytkownika"
    else:
        tytul = "Taki użytkownik już istnieje"

    return render_template('form.html', data=get_users(db.session),
                           no_error=no_error,
                           tytul=tytul)
