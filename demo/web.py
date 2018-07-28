from flask import Flask, url_for, render_template

app = Flask(__name__)


@app.route('/')
def index():
  return '''
  <a href="{home}">Home</a><br>
  <a href="{login}">Login</a><br>
  <a href="{user}">User</a><br>'''.format(
    home=url_for('index'),
    login=url_for('login'),
    user=url_for('user',name='jonas'),
    )
  

@app.route('/login')
def login():
  return 'Login..'

@app.route('/user/<name>')
def user(name):
  return "%s's profile..."%name


@app.route('/about/')
def about():
  return render_template('hello.html')