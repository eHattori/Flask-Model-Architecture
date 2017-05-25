from flask import Flask
from routes import *

app = Flask(__name__)


@app.route('/')
def documentation():
    return 'Documentation of API'

app.register_blueprint(routes)


if __name__ == '__main__':
    app.run()
