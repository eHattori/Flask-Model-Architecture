from flask import Blueprint
routes = Blueprint('routes', __name__)

from .validate_upload import *


