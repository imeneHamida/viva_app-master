from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
app= Flask(__name__)
app.config['SECRET_KEY']='d4799bbd3d37022f40cb55822b9598a0'
app.config['SQLALCHEMY_DATABASE_URI']='sqlite:///site.db'
db=SQLAlchemy(app)
Bcrypt=Bcrypt(app)

#from server import routes

