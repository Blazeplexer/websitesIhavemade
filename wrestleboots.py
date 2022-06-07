import mysql.connector
import os
from flask import Flask, render_template, request, redirect

ASSETS_DIR = os.path.dirname(os.path.realpath('__file__'))

app = Flask (__name__)

app.secret_key = "Life is Pain, I hate my-"

#sources used: stackflow listed below, pythonmysql books, and flask session. It was provided as examples in course CSIT437_41SU21

@app.before_request
def before_request():
    if request.url.startswith('http://'):
        url = request.url.replace('http://', 'https://', 1)
        # code = 301
        # return redirect(url, code=code)
        return redirect(url)

@app.route("/")
def main():
    return render_template('index.html')
@app.route("/AboutUs")
def AboutUs():
    return render_template('AboutUs.html')
@app.route("/ContactUs")
def ContactUs():
    return render_template('ContactUs.html')
@app.route("/ContactUs", methods=['POST', 'GET'])
def ContactUsContacted():
    if request.method == 'POST': 
        fname = request.form['fname']
        lname = request.form['lname']
        telephone = request.form['telephone']
        email = request.form['email']
        comment = request.form['comment']

        conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')

        cursor = conn.cursor()

        message = "INSERT INTO comments (FirstName, LastName, Phone, EmailAddress, Comment)"
        message += "values ('" + fname +"', '" + lname +"', '" + telephone +"', '" + email +"', '" + comment +"')"
        cursor.execute(message)
        conn.commit()

        return redirect("/Index")
    else:
        return redirect("/ContactUs")

@app.route("/LoginPage")
def LoginPage():
    return render_template('LoginPage.html')
@app.route("/LoginPage", methods =['POST', 'GET'])
def checkLogin():
    username = request.form['username']
    password = request.form['password']
    conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')

    cursor = conn.cursor()
    login = "SELECT * FROM users WHERE Username= '"+ username +"' AND Password = '" + password + "'"

    cursor.execute(login)
    logged = cursor.fetchone()

    if logged is not None:
        return render_template("IndexSignedIn.html")
    else:
        return redirect("/LoginPage")
        

@app.route("/Register")
def Register():
    return render_template('Register.html')
@app.route("/Register", methods=['POST', 'GET'])
def Registering():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')
        cursor = conn.cursor()
        registerUser = "INSERT INTO users (Username, Password)"
        registerUser+= "values ('"+ username + "', '"+ password + "') "
        cursor.execute(registerUser)
        conn.commit()
        return redirect("/LoginPage")
    else:
        return render_template("Register.html")
@app.route("/AdminLogin")
def AdminLogin():
    return render_template('AdminLogin.html')
@app.route("/AdminLogin", methods=['POST', 'GET'])
def AdminLoggingIn():    
    username = request.form['username']
    password = request.form['password']
    conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')

    cursor = conn.cursor()
    login = "SELECT * FROM admins WHERE Username= '"+ username +"' AND Password = '" + password + "'"

    cursor.execute(login)
    logged = cursor.fetchone()

    if logged is not None:
        return render_template("AdminPage.html")
    else:
        return redirect("/AdminLogin")
        
@app.route("/AdminPage")
def AdminPage():
    return render_template('AdminPage.html')

@app.route("/AdminPageComments")
def AdminPageComments():
    conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')
    cursor = conn.cursor()
    theComment = "SELECT * FROM comments" 
    commentData = cursor.execute(theComment)
    if commentData is None:
        commentInfo = cursor.fetchall()
        return render_template('AdminPageComments.html', commentInfo=commentInfo)
@app.route("/AdminPageComments",methods=['POST','GET'])
def AdminPageCommentsDelete():
    if request.method == "POST":
        id = request.form['ID'];
        conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')
        cursor = conn.cursor()
        userID = "DELETE FROM comments WHERE ID = ('%s' )" % (id)
        cursor.execute(userID)
        conn.commit()
        return redirect("/AdminPage")
    else:
        return redirect("/AdminPageUsers")

@app.route("/AdminPageStore")
def AdminPageStore():
    conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')
    cursor = conn.cursor()
    theStore = "SELECT * FROM store" 
    storeData = cursor.execute(theStore)
    if storeData is None:
        storeInfo = cursor.fetchall()
        return render_template('AdminPageStore.html', storeInfo=storeInfo)
@app.route("/AdminPageStore",methods=['POST','GET'])
def AdminPageStoreDelete():
    if request.method == "POST":
        id = request.form['ID'];
        conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')
        cursor = conn.cursor()
        storeID = "DELETE FROM store WHERE ID = ('%s' )" % (id)
        cursor.execute(storeID)
        conn.commit()
        return redirect("/AdminPage")
    else:
        return redirect("/AdminPageStore")

@app.route("/AdminPageUsers")
def AdminPageUsers():
    conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')
    cursor = conn.cursor()
    theUsers = "SELECT * FROM users" 
    userData = cursor.execute(theUsers)
    if userData is None:
        userInfo = cursor.fetchall()
        return render_template('AdminPageUsers.html', userInfo=userInfo)
@app.route("/AdminPageUsers",methods=['POST','GET'])
def AdminPageUsersDelete():
    if request.method == "POST":
        id = request.form['ID'];
        conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')
        cursor = conn.cursor()
        userID = "DELETE FROM users WHERE ID = ('%s' )" % (id)
        cursor.execute(userID)
        conn.commit()
        return redirect("/AdminPage")
    else:
        return redirect("/AdminPageUsers")

@app.route("/Store")
def Store():
    return render_template('Store.html')
@app.route("/Store",methods=['POST','GET'])
def StorePurchase():
    if request.method == 'POST':
        material = request.form['material']
        size = request.form['size']
        color = request.form['color']
        tipsColor = request.form['tipsColor']
        specialRequests = request.form['specialRequests']
        fname = request.form['fname']
        lname = request.form['lname']
        address = request.form['address']
        states = request.form['states']
        city = request.form['city']
        zipcode = request.form['zipcode']
        telephone = request.form['telephone']
        email = request.form['email']
        pay = request.form['pay']
        cardnumber = request.form['cardnumber']

        #all the items in the database of store


        conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')

        cursor = conn.cursor()

        
        purchase = "INSERT INTO store (Material, Size, Color, TipsColor, SpecialRequests, FirstName, LastName, Address, States, City, ZipCode, Phone, EmailAddress, PaymentMethod, CardNumber)"
        purchase += "values ('" + material +"', '" + size + "', '" + color + "', '" + tipsColor + "', '" + specialRequests + "', '" + fname + "', '" + lname + "', '" + address + "', '" + states + "', '" + city + "', '" + zipcode + "', '" + telephone + "', '" + email + "', '" + pay + "', '" + cardnumber + "')"
        cursor.execute(purchase)
        conn.commit()

        return redirect("/IndexSignedIn")
    else:
        return redirect("/Store")






@app.route("/AboutUsSignedIn")
def AboutUsSignedIn():
    return render_template('AboutUsSignedIn.html')
@app.route("/IndexSignedIn")
def IndexSignedIn():
    return render_template('IndexSignedIn.html')
@app.route("/ContactUsSignedIn")
def ContactUsSignedIn():
    return render_template('ContactUsSignedIn.html')
@app.route("/ContactUsSignedIn", methods=['POST', 'GET'])
def ContactUsContactedSignedIn():
    if request.method == 'POST': 
        fname = request.form['fname']
        lname = request.form['lname']
        telephone = request.form['telephone']
        email = request.form['email']
        comment = request.form['comment']

        conn = mysql.connector.connect(user='wrestleBootsManager',password='wrestlebootspro', host='127.0.0.1', database='wrestlebootsstore')

        cursor = conn.cursor()

        message = "INSERT INTO comments (FirstName, LastName, Phone, EmailAddress, Comment)"
        message += "values ('" + fname +"', '" + lname +"', '" + telephone +"', '" + email +"', '" + comment +"')"
        cursor.execute(message)
        conn.commit()

        return redirect("/IndexSignedIn")
    else:
        return redirect("/ContactUsSignedIn")
   
if __name__ == "__main__":
    context = ('server.crt', 'server.key')#certificate and key files
    app.run(debug=True, ssl_context=(context))


'''
References:

https://stackoverflow.com/questions/20115662/what-does-the-second-argument-of-the-session-pop-method-do-in-python-flask
https://stackoverflow.com/questions/16771894/python-nameerror-global-name-file-is-not-defined
https://stackoverflow.com/questions/29458548/can-you-add-https-functionality-to-a-python-flask-web-server
https://stackoverflow.com/questions/32237379/python-flask-redirect-to-https-from-http
https://stackoverflow.com/questions/32640090/python-flask-keeping-track-of-user-sessions-how-to-get-session-cookie-id
https://pythonise.com/series/learning-flask/python-before-after-request
'''