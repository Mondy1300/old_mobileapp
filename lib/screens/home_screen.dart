import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
          title: Text('PharmaPrice'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              accountinfo(context),
              doctorDaw(),
              text(context),
              category1(),
              category2(),
              text2(),
              store1(),
              store2(),
            ],
          ),
        ));
  }
}

Widget accountinfo(context) => Container(
    padding: EdgeInsets.only(left: 250),
    child: Row(
      children: [
        Icon(Icons.person),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/accountinfo');
          },
          child: Text(
            'John Doe',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.amber),
          ),
        )
      ],
    ));

Widget doctorDaw() => Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      alignment: Alignment.topCenter,
      child: Image.asset(
        'assets/main_pic.jpg',
        height: 150,
      ),
    );

Widget text(BuildContext context) => Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: Row(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Trending Categories',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/categories');
                },
                child: Text(
                  'SELECT CATEGORY',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          )
        ],
      ),
    );

Widget category1() => Container(
    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
    child: SizedBox(
      child: Row(
        children: [
          Image.asset(
            'assets/colds.png',
            height: 70,
          ),
          Image.asset(
            'assets/fever.png',
            height: 70,
          ),
        ],
      ),
    ));

Widget category2() => Container(
    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
    child: SizedBox(
      child: Row(
        children: [
          Image.asset(
            'assets/diabetes.png',
            height: 70,
          ),
          Image.asset(
            'assets/heart.png',
            height: 70,
          ),
        ],
      ),
    ));

Widget text2() => Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: SizedBox(
        child: Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Local Pharmacies',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            Padding(
                padding: EdgeInsets.only(left: 110),
                child: Text(
                  'View All',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.amber,
                  ),
                ))
          ],
        ),
      ),
    );

Widget store1() => Container(
    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
    child: SizedBox(
      child: Row(
        children: [
          Image.asset(
            'assets/mercury_drug.png',
            height: 100,
          ),
          Image.asset(
            'assets/generika.png',
            height: 100,
          ),
          Image.asset(
            'assets/rose_pharma.png',
            height: 100,
          ),
        ],
      ),
    ));

Widget store2() => Container(
    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
    child: SizedBox(
      child: Row(
        children: [
          Image.asset(
            'assets/rika_drug.png',
            height: 100,
          ),
          Image.asset(
            'assets/tgp.png',
            height: 100,
          ),
          Image.asset(
            'assets/watsons.png',
            height: 100,
          ),
        ],
      ),
    ));
