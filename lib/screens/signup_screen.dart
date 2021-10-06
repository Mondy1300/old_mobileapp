import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:main_project/models/users.dart';

class SignupFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SignUpForm(),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final _formKey = GlobalKey<FormState>();
  User _user = User();
  String pass = '';
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _fnameCtrl = TextEditingController();
  TextEditingController _lnameCtrl = TextEditingController();
  TextEditingController _passCtrl = TextEditingController();
  TextEditingController _conpassCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              firstnameField(),
              lastnameField(),
              emailField(),
              passwordField(),
              confirmpasswordField(),
              registerBtn(),
            ],
          ),
        ));
  }

  Widget firstnameField() => TextFormField(
        controller: _fnameCtrl,
        decoration: InputDecoration(
          labelText: 'Firstname',
          icon: Icon(Icons.person),
        ),
        validator: (value) {
          if (value.isEmpty) return 'Please enter Firstname';
          return null;
        },
        onSaved: (value) {
          _user.firstName = value;
        },
      );

  Widget lastnameField() => TextFormField(
        controller: _lnameCtrl,
        decoration: InputDecoration(
          labelText: 'Lastname',
          icon: Icon(Icons.person),
        ),
        validator: (value) {
          if (value.isEmpty) return 'Please enter Lastname';
          return null;
        },
        onSaved: (value) {
          _user.lastName = value;
        },
      );

  Widget emailField() => TextFormField(
        controller: _emailCtrl,
        decoration: InputDecoration(
          labelText: 'Email',
          icon: Icon(Icons.email),
        ),
        validator: (value) {
          if (value.isEmpty)
            return 'Please enter Email';
          else if (!value.contains('@')) return 'Please enter a valid email';
          return null;
        },
        onSaved: (value) {
          _user.email = value;
          _emailCtrl.clear();
        },
      );

  Widget passwordField() => TextFormField(
        controller: _passCtrl,
        decoration: InputDecoration(
          labelText: 'Password',
          icon: Icon(Icons.lock),
        ),
        validator: (value) {
          pass = value;
          if (value.isEmpty) return 'Please enter password';
          return null;
        },
        onSaved: (value) {
          _user.password = value;
        },
      );

  Widget confirmpasswordField() => TextFormField(
        controller: _conpassCtrl,
        decoration: InputDecoration(
          labelText: 'Confirm Password',
          icon: Icon(Icons.lock),
        ),
        validator: (value) {
          if (value.isEmpty)
            return 'Please enter fullname';
          else if (value != pass) {
            return 'Password does not match';
          }
          return null;
        },
        onSaved: (value) {},
      );

  Widget registerBtn() => Container(
      padding: EdgeInsets.only(top: 10),
      child: SizedBox(
          width: double.infinity,
          child: RaisedButton(
            child: Text('Register'),
            color: Colors.blue[400],
            onPressed: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                inspect(_user);
              }
              addUsers();
              _emailCtrl.clear();
              _fnameCtrl.clear();
              _lnameCtrl.clear();
              _passCtrl.clear();
              _conpassCtrl.clear();
            },
          )));

  Future<void> addUsers() {
    return users
        .add({
          'FirstName': _user.firstName,
          'LastName': _user.lastName,
          'Email': _user.email,
          'Password': _user.password,
        })
        .then((value) => print('User Added!'))
        .catchError((error) => print("Failed to add user!"));
  }
}
