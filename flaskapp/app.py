from flask import Flask, render_template
app = Flask(__name__)


@app.route('/')
def hello():
    return render_template('index.html', data="hello flask_webapp")


if __name__ == '__main__':
    app.run(port="5000", host="0.0.0.0")
