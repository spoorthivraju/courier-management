
from typing import ValuesView
from flask import Flask, render_template, request,redirect,url_for,flash
from flask_sqlalchemy import SQLAlchemy



import psycopg2
import psycopg2.extras
app =Flask(__name__,static_url_path='/static')

#connect to the db
con=psycopg2.connect(
                host="localhost",
                database="courier_system",
                user="postgres",
                password ="sjn")

cur=con.cursor()

@app.route('/')
def index():
    return render_template('index.html')
@app.route('/customer',methods=['GET','POST'])
def customer():
    if request.method == 'POST':
        S_Id=request.form["S_Id"]
        Name=request.form["Name"]
        Phone=request.form["Phone"]
        Package_ID=request.form["Package_ID"]
        House_no=request.form["House_no"]
        street_no=request.form["street_no"]
        SBranch_ID=request.form["SBranch_ID"]
        print("helloo")
    
        #sql = '''INSERT INTO SENDER(S_ID,S_Name,S_Phno,Package_ID,House_no,Street_no,SBranch_ID") Values(%s,%s,%s,%s,%s,%s,%s,%s)" ,(S_Id,Name,Phone,Package_ID,House_no,street_no,branch_ID) '''
        cur.execute("INSERT INTO SENDER(S_ID,S_Name,S_Phno,Package_ID,House_no,Street_no,SBranch_ID) Values(%s,%s,%s,%s,%s,%s,%s)" ,(S_Id,Name,Phone,Package_ID,House_no,street_no,SBranch_ID))
        
        con.commit()
        flash('Your request is succesfully sent to the courier','success')
        #return redirect(url_for('.index'))


    return render_template('customer_rig.html')
@app.route('/receiverinfo',methods=['GET','POST'])
def receiverinfo():
    if request.method == 'POST':
        R_Id=request.form["R_Id"]
        Name=request.form["Name"]
        Phone=request.form["Phone"]
        Package_ID=request.form["Package_ID"]
        House_no=request.form["House_no"]
        street_no=request.form["street_no"]
        Branch_ID=request.form["Branch_ID"]
        print("helloo")
    
        #sql = '''INSERT INTO SENDER(S_ID,S_Name,S_Phno,Package_ID,House_no,Street_no,SBranch_ID") Values(%s,%s,%s,%s,%s,%s,%s,%s)" ,(S_Id,Name,Phone,Package_ID,House_no,street_no,branch_ID) '''
        cur.execute("INSERT INTO Receiver(R_ID,R_Name,R_Phno,Package_ID,House_no,Street_no,RBranch_ID) Values(%s,%s,%s,%s,%s,%s,%s)" ,(R_Id,Name,Phone,Package_ID,House_no,street_no,Branch_ID))
        
        con.commit()
        flash('Your request is succesfully sent to the courier','success')
        #return redirect(url_for('.index'))


    return render_template('receiver_info.html')
        
@app.route('/about')
def about():
    return render_template('About_US.html')

@app.route('/option')
def option():
    return render_template('option.html')

@app.route('/back',methods=['GET','POST'])
def back():
    return render_template('option.html')
@app.route('/courier',methods=['GET','POST'])
def courier():
    

    return render_template('courier_login.html')
@app.route('/senderinfo')
def senderinfo():
    cur.execute("SELECT * from sender")
    
    details = cur.fetchall()
    if len(details)>0:
        return render_template('sender_details.html',details=details)
    else:
         msg = ' No more packages to send '
         return render_template('sender_details.html',msg=msg)
    
@app.route('/receiver')
def receiver():
    cur.execute("SELECT * from receiver")
    
    details = cur.fetchall()
    
    if len(details)>0:
        return render_template('receiverdetails.html',details=details)
    else:
         msg = ' No more packages to send '
         return render_template('receiverdetails.html',msg=msg)

@app.route('/SRdetails')
def SRdetails():
    cur.execute("select S_Name,S_phno,sbranch_id,r_name,r_phno,rbranch_id from sender,receiver where sender.package_id=receiver.package_id;")
    
    details = cur.fetchall()
    
    if len(details)>0:
        return render_template('S-Rdetails.html',details=details)
    else:
         msg = ' no more receiver  '
         return render_template('S-Rdetails.html',msg=msg)

if __name__ =='__main__':
    app.secret_key = 'super secret key'
    app.config['SESSION_TYPE'] = 'filesystem'

    
    app.run(debug=True)