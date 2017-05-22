from flask import Blueprint

validate_upload = Blueprint('validate_upload', __name__)


@validate_upload.route('/validateUpload/hello')
def hello():
    return 'Hello Validate Order'
