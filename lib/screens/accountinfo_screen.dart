import 'package:flutter/material.dart';

class AcccountInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Account Information')),
      body: AccountInfo(),
    );
  }
}

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          firstName(),
          lastName(),
          email(),
          password(),
          editButton(),
        ],
      ),
    );
  }
}

Widget firstName() => Container(
      margin: EdgeInsets.fromLTRB(5, 25, 15, 15),
      padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
      child: Row(
        children: [
          Icon(
            Icons.person,
            color: Colors.blue[400],
          ),
          Text('  First Name \t: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          Text(
            'Raymond',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

Widget lastName() => Container(
      margin: EdgeInsets.fromLTRB(5, 5, 15, 5),
      padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
      child: Row(
        children: [
          Icon(
            Icons.person,
            color: Colors.blue[400],
          ),
          Text('  Last Name \t: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          Text(
            'Dayadaya',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

Widget email() => Container(
      margin: EdgeInsets.fromLTRB(5, 15, 15, 5),
      padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
      child: Row(
        children: [
          Icon(
            Icons.email,
            color: Colors.blue[400],
          ),
          Text('  Email \t\t\t\t\t\t\t  :',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          Text(
            ' mail@mail',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

Widget password() => Container(
      margin: EdgeInsets.fromLTRB(5, 10, 15, 5),
      padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
      child: Row(
        children: [
          Icon(
            Icons.email,
            color: Colors.blue[400],
          ),
          Text('  Password \t  :',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          Text(
            ' *******',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

Widget editButton() => Container(
      margin: EdgeInsets.fromLTRB(5, 10, 15, 5),
      padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          child: Text('Edit Profile'),
          color: Colors.blue[400],
          onPressed: () {},
        ),
      ),
    );
