from prince import db

class Langue(db.Model):
    __tablename__='prince_language'
    id = db.Column(db.Integer, primary_key=True)
    iso = db.Column('iso', db.Text, unique=True, nullable=False)
    langue_fr = db.Column('french', db.Text, nullable=False)
    langue_en = db.Column('english', db.Text)
    self = db.Column('self', db.Text)
    text = db.Column('text', db.Text)
    imgtext = db.Column('imgtext', db.String(20))
    trad = db.Column('trad', db.String(120))
    comment = db.Column('comment', db.Text)
    grp = db.Column('grp', db.Integer)
    geo = db.Column('geo', db.String(100))
    geolat = db.Column('geolat', db.Float)
    geolng = db.Column('geolng', db.Float)

    def __repr__(self):
        return f"Langue('{self.langue_fr}')"
