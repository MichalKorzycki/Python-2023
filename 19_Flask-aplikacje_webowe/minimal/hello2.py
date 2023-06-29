# flask --app hello2 run

from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"


@app.route("/test")
def test():
    return "<p>Hello, World from test!</p>"


@app.route("/another")
def another():
    return "<p>Hello, World from another!</p>"
