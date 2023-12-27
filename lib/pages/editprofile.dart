import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EditProfilePage(),
  ));
}

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9EB384),
      appBar: AppBar(
        backgroundColor: Color(0xFF9EB384),
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Card(
            color: Color(0xFFCEDEBD),
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ProfileField(
                    title: 'Name',
                    value: 'John Doe', // Replace with user's name
                    onEdit: () {
                      // Add function to edit Name
                    },
                  ),
                  Divider(
                    color: Colors.black, // Set the color of the divider
                    thickness: 2, // Adjust the thickness if needed
                  ),
                  ProfileField(
                    title: 'Address',
                    value: '123 Main St, City, Country',
                    // Replace with user's address
                    onEdit: () {
                      // Add function to edit Address
                    },
                  ),
                  Divider(
                    color: Colors.black, // Set the color of the divider
                    thickness: 2, // Adjust the thickness if needed
                  ),
                  ProfileField(
                    title: 'Date of Birth',
                    value: 'January 1, 1990',
                    // Replace with user's date of birth
                    onEdit: () {
                      // Add function to edit DOB
                    },
                  ),
                  Divider(
                    color: Colors.black, // Set the color of the divider
                    thickness: 2, // Adjust the thickness if needed
                  ),
                  ProfileField(
                    title: 'Age',
                    value: '32 years', // Replace with user's age
                    onEdit: () {
                      // Add function to edit Age
                    },
                  ),
                  Divider(
                    color: Colors.black, // Set the color of the divider
                    thickness: 2, // Adjust the thickness if needed
                  ),
                  ProfileField(
                    title: 'Gender',
                    value: 'Male', // Replace with user's gender
                    onEdit: () {
                      // Add function to edit Gender
                    },
                  ),
                  Divider(
                    color: Colors.black, // Set the color of the divider
                    thickness: 2, // Adjust the thickness if needed
                  ),
                  ProfileField(
                    title: 'Mobile Number',
                    value: '+1234567890', // Replace with user's mobile number
                    onEdit: () {
                      // Add function to edit Mobile Number
                    },
                  ),
                  Divider(
                    color: Colors.black, // Set the color of the divider
                    thickness: 2, // Adjust the thickness if needed
                  ),
                  ProfileField(
                    title: 'Email',
                    value: 'john@example.com', // Replace with user's email
                    onEdit: () {
                      // Add function to edit Email
                    },
                  ),
                  Divider(
                    color: Colors.black, // Set the color of the divider
                    thickness: 2, // Adjust the thickness if needed
                  ),
                  ProfileField(
                    title: 'Aadhar Number',
                    value: '1234 5678 9012',
                    // Replace with user's Aadhar number
                    onEdit: () {
                      // Add function to edit Aadhar Number
                    },
                  ),
                  Divider(
                    color: Colors.black, // Set the color of the divider
                    thickness: 2, // Adjust the thickness if needed
                  ),
                  ProfileField(
                    title: 'Insurance Number',
                    value: 'INS-12345', // Replace with user's insurance number
                    onEdit: () {
                      // Add function to edit Insurance Number
                    },
                  ),
                  Divider(
                    color: Colors.black, // Set the color of the divider
                    thickness: 2, // Adjust the thickness if needed
                  ),
                  // Add other fields similarly
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback? onEdit;

  const ProfileField({
    Key? key,
    required this.title,
    required this.value,
    this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            if (onEdit != null)
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: onEdit,
              ),
          ],
        ),
        SizedBox(height: 4),
        Text(value),
      ],
    );
  }
}
