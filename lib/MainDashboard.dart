import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'LatestJobs.dart';
import 'Registration.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Chat App",
    home: HomePage(),
  ));
}

void _navigateToSignUp(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => Registration()));
}
/*
void _navigateToJobs(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => LatestJobs(jobModel: null,)));
}*/

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'User Name',
      ),
    );

    final forgetPassword = TextButton(
      child: Text(
        'Forget Password ?',
        textAlign: TextAlign.right,
      ),
      onPressed: () {},
    );

    final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          //_navigateToJobs(context);
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
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
        title: Text("Login"),
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
                            margin: const EdgeInsets.fromLTRB(0, 0, 130, 0),
                            child: Text(
                              'SignIn Here !!',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            )),
                        SizedBox(height: 45.0),
                        emailField,
                        SizedBox(height: 25.0),
                        passwordField,
                        SizedBox(
                          height: 10.0,
                        ),
                        forgetPassword,
                        SizedBox(
                          height: 35.0,
                        ),
                        loginButton,
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                            child: Row(
                          children: <Widget>[
                            Text('Does not have account?'),
                            TextButton(child: Text(
                                'Sign Up',
                                style: TextStyle(fontSize: 16),
                              ),
                              onPressed: () {
                                _navigateToSignUp(context);
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
    );
  }
}
