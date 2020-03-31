from flask import render_template, url_for
from prince import app, db
from prince.models import Langue

@app.route('/')
@app.route('/home')
def home():
    return render_template('home.html', title='Petit Prince')

@app.route('/liste_langues')
def liste_langues():
    return render_template('liste_langues.html', title='Liste des langues')

@app.route('/langue/<lang>')
def langue(lang):
    return render_template('langue.html', lang=lang, title=lang)

@app.route('/carte')
def carte():
    return render_template('carte.html', title='Carte')
