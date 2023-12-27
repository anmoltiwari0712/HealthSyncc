import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/createprofile.dart'; // Import your OTPVerification page

class TandC extends StatefulWidget {
  @override
  _TandCState createState() => _TandCState();
}

class _TandCState extends State<TandC> {
  bool agreed = false;

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
        title: Text('Terms and Conditions'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildText(
                '1. Information Collection: We collect relevant information during the registration process and when you use our application. This may include personal details such as your name, contact information, and medical history. We only collect information that is necessary for providing our services and improving user experience.',
              ),
              buildText(
                '2. Use of Information: We use the information we collect to provide personalized healthcare services, process your requests, and communicate important updates or notifications. We may also use aggregated and anonymized data for research and statistical purposes to enhance our application\'s functionality and effectiveness.',
              ),
              buildText(
                '3. Data Sharing: We do not sell, rent, or lease your personal information or medical data to third parties. However, we may share your information with trusted service providers and partners who assist us in delivering our services, subject to strict confidentiality agreements. We may also disclose your information if required by law or to protect our rights and the safety of our users.',
              ),
              buildText(
                '4. Data Retention: We retain your information only for as long as necessary to fulfill the purposes outlined in this Privacy Policy, unless a longer retention period is required by law. We have implemented appropriate measures to securely dispose of data that is no longer needed.',
              ),
              buildText(
                '5. User Controls: We provide you with certain controls to manage your information and privacy preferences. You can review, update, or delete your personal information through the settings in our application. However, please note that deleting certain information may limit your access to and use of our services.',
              ),
              buildText(
                '6. Third-Party Links: Our application may contain links to third-party websites or services. We are not responsible for the privacy practices or content of these third parties. We encourage you to review their privacy policies before providing any personal information to them.',
              ),
              buildText(
                '7. Children\'s Privacy: Our application is not intended for use by individuals under the age of 18 without parental consent. We do not knowingly collect personal information from children. If we become aware of any such information, we will take immediate steps to delete it.',
              ),
              buildText(
                '8. We reserve the right to update this Privacy Policy as needed. We will notify you of any material changes through our application or other means. By using our services, you acknowledge and agree to the terms outlined in this Privacy Policy.',
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Checkbox(
                    value: agreed,
                    onChanged: (bool? value) {
                      setState(() {
                        agreed = value!;
                      });
                    },
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Text(
                      'I Agree to the terms and conditions',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: agreed ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateProfile(),
                    ),
                  );
                } : null,
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16.0),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
