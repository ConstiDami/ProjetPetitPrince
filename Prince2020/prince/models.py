from prince import db

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
