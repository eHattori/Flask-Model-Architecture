from . import routes


@routes.route('/validateUpload/hello')
def hello():
    return 'Hello Validate Order'
