import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/mobileno.dart'; // Replace with your Mobileno page import path

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Function to navigate to the Mobileno page after 5 seconds
    Future<void> navigateToMobileno(BuildContext context) async {
      await Future.delayed(Duration(seconds: 5));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Mobileno()), // Navigate to Mobileno page
      );
    }

    // Call the function to navigate after the widget is built
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      navigateToMobileno(context);
    });

    return Scaffold(
      backgroundColor: Color(0xFF9EB384), // Set the background color

      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                padding: EdgeInsets.only(top: 80.0, left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png', // Replace with your logo image asset path
                      width: 300,
                      height: 150,
                    ),
                    SizedBox(height: 0.0),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text(
                        'Take Charge Of Your Health',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/background_image.png', // Replace with your background image asset path
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),

    );
  }
}
