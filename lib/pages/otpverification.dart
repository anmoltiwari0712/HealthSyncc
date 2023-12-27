import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/tandc.dart'; // Import your TandC page

class OTPVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9EB384),
      appBar: AppBar(
        backgroundColor: Color(0xFF9EB384),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back when back button is pressed
          },
        ),
      ),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Enter Verification Code',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Image.asset(
                'assets/lock.png', // Replace with your small logo image asset path
                width: 80,
                height: 80,
              ),
              SizedBox(height: 20.0),
              Text(
                'Enter the one-time password sent to +91xxxxxxxx', // Replace with the appropriate phone number
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter OTP',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 4.0), // Adjust border width if needed
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Navigate to TandC page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TandC()), // Navigate to TandC page
                  );
                },
                child: Text('Verify OTP'),
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/bro.png', // Replace with your background image asset path
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
