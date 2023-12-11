# flask --app app run
#
from flask import Flask, render_template, request

app = Flask(__name__)


@app.route('/params')
def hello():
    name = ""
    args = request.args
    print(args)
    params = [{"key": k, "value": v} for k, v in args.items()]
    if "name" in args.keys():
        name = args["name"]
    print(params)
    return render_template('params.html', params=params, name=name)
