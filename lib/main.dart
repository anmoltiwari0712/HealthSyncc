import 'package:flutter/material.dart';
import "package:healthsyncc/pages/homepage.dart";
import "package:healthsyncc/pages/mobileno.dart";// Import your HomePage file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Other theme configurations
      ),
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => HomePage(), // Set your main page as the initial route
        '/login': (context) => Mobileno(), // Define the login screen route
      }, // Set your HomePage as the initial screen
    );
  }
}
