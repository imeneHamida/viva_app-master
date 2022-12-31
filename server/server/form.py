from flask_wtf import FlaskForm
from wtforms import StringField,PasswordField,SubmitField,BooleanField
from wtforms.validators import DataRequired,Email,EqualTo

class Registration(FlaskForm):
    email =StringField('Email',validators=[DataRequired(),Email()])
    submit = SubmitField('Enter')

class ConfirmPassword(FlaskForm):
    password=PasswordField('Password',validators=[DataRequired()])
    confirm_password=PasswordField('Confirm Password',validators=[DataRequired(),EqualTo('password')]) 
    submit=SubmitField('Sign In')

class LoginForm(FlaskForm):
    email=StringField('Email',validators=[DataRequired(),Email()])
    password=PasswordField('Password',validators=[DataRequired()])
    submit = SubmitField('Login')