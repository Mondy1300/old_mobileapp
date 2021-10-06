import 'package:flutter/material.dart';

class LoginFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
      ),
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg_app.jpg'), fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              logo(),
              userName(),
              passWord(),
              btnRegister(context),
            ],
          ),
        ));
  }
}

Widget userName() => TextFormField(
        decoration: InputDecoration(
      fillColor: Colors.white30,
      filled: true,
      labelText: 'Username',
      labelStyle: new TextStyle(
        color: Colors.white70,
        fontWeight: FontWeight.bold,
      ),
    ));

Widget passWord() => TextFormField(
        decoration: InputDecoration(
      fillColor: Colors.white30,
      filled: true,
      labelText: 'Password',
      labelStyle: new TextStyle(
        color: Colors.white70,
        fontWeight: FontWeight.bold,
      ),
    ));

Widget logo() {
  return Container(
    margin: EdgeInsets.only(left: 10),
    alignment: Alignment.topCenter,
    child: Image.asset(
      'assets/logo_app.png',
      height: 250,
    ),
  );
}

Widget btnRegister(BuildContext context) => Container(
      padding: EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 50,
        width: 400,
        child: Row(
          children: <Widget>[
            btnSignUp(context),
            btnLogin(context),
          ],
        ),
      ),
    );

Widget btnLogin(BuildContext context) => Container(
    margin: EdgeInsets.fromLTRB(30, 0, 10, 0),
    child: RaisedButton(
      color: Colors.amber,
      child: Text('Log in'),
      onPressed: () {
        Navigator.pushNamed(context, '/home');
      },
    ));

Widget btnSignUp(BuildContext context) => Container(
    margin: EdgeInsets.fromLTRB(50, 0, 30, 0),
    child: RaisedButton(
      color: Colors.amber,
      child: Text('Sign up'),
      onPressed: () {
        Navigator.pushNamed(context, '/sign_up');
      },
    ));
