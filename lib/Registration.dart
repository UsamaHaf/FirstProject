import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Blogs.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Chat App",
    home: Registration(),
  ));
}

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userNameField = TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'User Name',
      ),
    );

    final emailField = TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'User Email',
      ),
    );

    final phoneField = TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Phone Number',
      ),
    );

    final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
    final signUpButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          _navigateToBlogs(context);
        },
        child: Text("Register", textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );



    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView(
            children: <Widget>[
              Container(child: SizedBox(height: 60)),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 12,
                    shadowColor: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            margin: const EdgeInsets.fromLTRB(0, 0, 120, 0),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              "assets/ic_login.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 90, 0),
                              child: Text(
                                'Create New Account !!',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              )),
                          SizedBox(height: 45.0),
                          userNameField,
                          SizedBox(height: 25.0),
                          emailField,
                          SizedBox(height: 25.0),
                          phoneField,
                          SizedBox(height: 25.0),
                          passwordField,
                          SizedBox(height: 25.0,),
                          signUpButton,
                          SizedBox(height: 25.0,),
                          Container(
                              child: Row(
                                children: <Widget>[
                                  Text('Already have an account?'),
                                  FlatButton(
                                    textColor: Colors.blue,
                                    child: Text(
                                      'Sign in',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      //._navigateToSignUp(context);
                                      //signup screen
                                    },
                                  )
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void _navigateToBlogs(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => Blogs()));
}