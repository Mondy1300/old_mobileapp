import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:main_project/app_state/favorite.dart';
import 'package:main_project/screens/accountinfo_screen.dart';
import 'package:main_project/screens/categories_screen.dart';
import 'package:main_project/screens/favorite_screen.dart';
import 'package:main_project/screens/home_screen.dart';
import 'package:main_project/screens/login_form.dart';
import 'package:main_project/screens/meds_screen.dart';
import 'package:main_project/screens/signup_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Container(
              child: Text('error'),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return StartApp();
          }
          return Container(
            child: Text('loading', textDirection: TextDirection.ltr),
          );
        });
  }
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FavoriteModel(),
        child: MaterialApp(
          title: 'Pharma Price',
          initialRoute: '/log_in',
          routes: {
            '/log_in': (context) => LoginFormScreen(),
            '/home': (context) => HomeScreen(),
            '/categories': (context) => CategoriesScreen(),
            '/sign_up': (context) => SignupFormScreen(),
            '/meds': (context) => MedsScreen(),
            '/favorite': (context) => FavoriteScreen(),
            '/accountinfo': (context) => AcccountInfoScreen(),
          },
        ));
  }
}
