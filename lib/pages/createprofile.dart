import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/personaldetails.dart'; // Import your OTPVerification page

class CreateProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9EB384),
      appBar: AppBar(
        backgroundColor: Color(0xFF9EB384),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Create Your Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle, // Replace with your profile icon
              size: 206,
              color: Colors.grey, // Set the desired icon color

            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalDetails()),
                );
              },
              child: Text('Set Profile'),
            ),
          ],
        ),
      ),
    );
  }
}


