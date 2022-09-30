import 'package:flutter/material.dart';



// imports from other pages
import 'screens/homepage.dart';
import '/screens/login_and_signup_screen/login_screen.dart';
import '/screens/login_and_signup_screen/sign_up_screen.dart';
import '/screens/feed_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solar Cleaning App',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(112, 112, 112, 1),
        primarySwatch: Colors.blue,
        backgroundColor: const Color.fromRGBO(104, 169, 244, 1),

        //this is where am doing my settings for the app bar
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black54,
            fontFamily: "Nexa",
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 1,
          ),
          actionsIconTheme: IconThemeData(color: Colors.black, size: 30),
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 28,
          )
        ),

        // this is my settings for the textTheme
        textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 13),
          bodyLarge: TextStyle(
              fontSize: 23,
              fontFamily: "Nexa",
              fontWeight: FontWeight.bold,
              color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(37, 195, 74, 1),
          ),
          labelSmall: TextStyle(
            fontSize: 18,
            fontFamily: "Nexa",
            fontWeight: FontWeight.normal,

          ),
          titleLarge: TextStyle(
            fontSize: 20,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            fontFamily: "Nexa"
          ),
          titleSmall: TextStyle(
            fontSize: 15,
            fontFamily: "Nexa"
          )
        ),

        // this is my button style
        buttonTheme: const ButtonThemeData(
            minWidth: 40,
            height: 20,
            buttonColor: Color.fromRGBO(37, 195, 74, 1),
        )
      ),

      // always at my first page
      initialRoute: "/",

      // this is the initialization of all routes
      routes: {
        "/": (ctx) => const MyHomePage(),
        "/loginPage": (ctx) => const LoginPage(),
        "/signUpPage": (ctx) => const SignUpPage(),
        "/feedPage": (ctx) => const FeedPage(),
      },
    );
  }
}


