#encoding=utf-8
from flask import Flask, render_template, url_for
app = Flask(__name__)

@app.route('/')
@app.route('/home')
def home():
    return render_template('home.html', title='Petit Prince')

@app.route('/liste_langues')
def liste_langues():
    return render_template('liste_langues.html', title='Liste des langues')

@app.route('/langue')
def langue():
    return render_template('langue.html', title='Langue')

@app.route('/carte')
def carte():
    return render_template('carte.html', title='Carte')

if __name__=='__main__':
    app.run(debug=True)
