from prince import db

class Langue(db.Model):
    __tablename__='prince_language'
    id = db.Column(db.Integer, primary_key=True)
    iso = db.Column(db.Text, unique=True, nullable=False)
    varpron = db.Column(db.Integer)
    french = db.Column(db.Text, nullable=False)
    english = db.Column(db.Text, nullable=False)
    self = db.Column(db.Text)
    text = db.Column(db.Text)
    imgtext = db.Column(db.String(20))
    trad = db.Column(db.String(120))
    comment = db.Column(db.Text)
    actif = db.Column(db.Integer)
    grp = db.Column(db.Integer)
    geo = db.Column(db.String(100))
    geolat = db.Column(db.Float)
    geolng = db.Column(db.Float)

    def __repr__(self):
        return f"Langue('{self.french}')"
