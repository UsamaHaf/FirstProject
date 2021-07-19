import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Chat App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'User Name',
      ),
    );

    final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Login Here',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 12,
                  shadowColor: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 45.0,
                          child: Image.asset(
                            "assets/ic_login.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 45.0),
                        emailField,
                        SizedBox(height: 25.0),
                        passwordField,
                        SizedBox(
                          height: 35.0,
                        ),
                        loginButon,
                        SizedBox(
                          height: 15.0,
                        ),
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
