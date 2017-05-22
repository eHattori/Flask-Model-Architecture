from flask import Flask
from routes.validate_upload import validate_upload

app = Flask(__name__)


@app.route('/')
def documentation():
    return 'Documentation of API'

app.register_blueprint(validate_upload)


if __name__ == '__main__':
    app.run()
