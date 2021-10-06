import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        title: Text('SELECT CATEGORY'),
      ),
      body: Categories(),
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/med_bg.jpg'), fit: BoxFit.fill)),
      child: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/meds');
            },
            child: ListTile(
              title: Text(
                'VITAMINS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: Icon(Icons.arrow_drop_down),
              leading: Icon(Icons.label),
            ),
          ),
          ListTile(
            leading: Icon(Icons.label),
            title: Text(
              'FEVER',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_drop_down),
          ),
          ListTile(
            leading: Icon(Icons.label),
            trailing: Icon(Icons.arrow_drop_down),
            title: Text(
              'FLU',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.label),
            trailing: Icon(Icons.arrow_drop_down),
            title: Text(
              'DIABETES',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.label),
            trailing: Icon(Icons.arrow_drop_down),
            title: Text(
              'CHOLESTEROL',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.label),
            trailing: Icon(Icons.arrow_drop_down),
            title: Text(
              'HIGH BLOOD',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.label),
            trailing: Icon(Icons.arrow_drop_down),
            title: Text(
              'DIARRHEA',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.label),
            trailing: Icon(Icons.arrow_drop_down),
            title: Text(
              'HEADACHES',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.label),
            trailing: Icon(Icons.arrow_drop_down),
            title: Text(
              'ALLERGIES',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.label),
            trailing: Icon(Icons.arrow_drop_down),
            title: Text(
              'PAINKILLERS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.label),
            trailing: Icon(Icons.arrow_drop_down),
            title: Text(
              'HEART',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
