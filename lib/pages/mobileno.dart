import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/otpverification.dart'; // Import your OTPVerification page

class Mobileno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9EB384), // Set the background color
      resizeToAvoidBottomInset: false, // Avoid resizing when the keyboard appears
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 80.0, right: 30.0),
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
            SizedBox(height: 40.0), // Add spacing between logo/tagline and input field
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Mobile Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0, // Thickness of the border
                    ),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            SizedBox(height: 20.0), // Add spacing between input field and button
            ElevatedButton(
              onPressed: () {
                // Navigate to OTPVerification page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OTPVerification()), // Navigate to OTPVerification page
                );
              },
              child: Text('Generate OTP'),
            ),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom), // Ensure space for the keyboard
            Container(
              margin: EdgeInsets.only(top: 40.0), // Padding top of 40
              height: 400.0, // Height of the image container
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/bro.png', // Replace with your background image asset path
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
