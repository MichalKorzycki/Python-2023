# flask --app app run
#
from flask import Flask, render_template, request

app = Flask(__name__)


@app.route('/params')
def hello():
    args = request.args
    print(args)
    params = [{"key": k, "value": v} for k, v in args.items()]
    print(params)
    return render_template('params.html', params=params)
