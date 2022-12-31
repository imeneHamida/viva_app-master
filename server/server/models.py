from server import db



class Admin(db.Model):
    __tablename__ = 'admin'
    __table_args__= tuple(db.UniqueConstraint('id','email',name='my2uniq'))
    id = db.Column(db.Integer, primary_key=True)
    fullname=db.Column(db.String(20),unique=True,nullable=False)
    image_file=db.Column(db.String(20),nullable=False,default='userImg.png')
    email = db.Column(db.String(120),unique=True,nullable=False) 
    password = db.Column(db.String(60),nullable=False,default='azerty')
    projects=db.relationship('Projects',lazy=True)

    def __repr__(self):
        return f"admin('{self.fullname}','{self.email}')"
    
class Teacher(db.Model):
    __tablename__ = 'teacher'
    __table_args__= tuple(db.UniqueConstraint('id','email',name='my2uniq'))
    id = db.Column(db.Integer, primary_key=True)
    fullname=db.Column(db.String(20),unique=True,nullable=False)
    image_file=db.Column(db.String(20),nullable=False,default='userImg.png')
    email = db.Column(db.String(120),unique=True,nullable=False) 
    password = db.Column(db.String(60),nullable=False)
    projects=db.relationship('Projects',lazy=True)

    def __repr__(self):
        return f"teacher('{self.fullname}','{self.image_file}')"

    

    

class Projects(db.Model):
    __tablename__ = 'project'
    id = db.Column(db.Integer, primary_key=True)
    name=db.Column(db.String(20),unique=True,nullable=False)
    year= db.Column(db.DateTime,nullable=False)
    admin_id=db.Column(db.Integer,db.ForeignKey('admin.id'),nullable=False)
    teacher_id=db.Column(db.Integer,db.ForeignKey('teacher.id'),nullable=False)
    studentName1=db.Column(db.String(20),unique=True,nullable=False)
    studentName2=db.Column(db.String(20),unique=True,nullable=True,default='none')
    studentName3=db.Column(db.String(20),unique=True,nullable=True,default='none')
    teacher_note=db.Column(db.Float(2),nullable=False)
    examiner_note=db.Column(db.Float(2),nullable=False)
    president_note=db.Column(db.Float(2),nullable=False)

    def __repr__(self):
        return f"Projects('{self.name}','{self.year}','{self.studentName1}','{self.studentName2}','{self.studentName3}')"

    

class Student(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name=db.Column(db.String(20),unique=True,nullable=False)
    year= db.Column(db.DateTime,nullable=False)
    note=db.Column(db.Float,nullable=True,default=0)

def __repr__(self):
    return f"Student('{self.name}','{self.year}','{self.note}')"


