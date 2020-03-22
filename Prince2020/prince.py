#encoding=utf-8
from flask import Flask, render_template, url_for
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI']='sqlite:///test.db'
db = SQLAlchemy(app)

class Langue(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    iso = db.Column(db.String(10), unique=True, nullable=False)
    langue_fr = db.Column(db.String(20), nullable=False)
    langue_en = db.Column(db.String(20))
    self = db.Column(db.String(20))
    text = db.Column(db.Text)
    imgtext = db.Column(db.String(20))
    trad = db.Column(db.String(120))
    comment = db.Column(db.Text)
    grp = db.Column(db.Integer)
    geo = db.Column(db.String(100))
    geolat = db.Column(db.Float)
    geolng = db.Column(db.Float)

    def __repr__(self):
        return f"Langue('{self.langue_fr}')"


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

if __name__=='__main__':
    app.run(debug=True)
