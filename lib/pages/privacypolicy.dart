import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/sharedocs.dart';
import 'package:healthsyncc/pages/trackers.dart';
import 'package:healthsyncc/pages/locate.dart';
import 'package:healthsyncc/pages/contactus.dart';
import 'package:healthsyncc/pages/mainpage.dart';

class PrivacyPolicyPage extends StatelessWidget {
  // Function to build individual points of the policy text
  Widget buildText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

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
      ),
      body: SingleChildScrollView( // Wrap the content with SingleChildScrollView
        child: Padding(
          padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color(0xFF9EB384),
                      child: Icon(
                        Icons.account_circle,
                        size: 70,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // Profile section (similar to previous pages)
              // Privacy policy content
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
            ],
          ),
        ),
      ),
      // Bottom navigation bar (if applicable)
      // ...
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF9EB384),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (int index) {
          switch (index) {
            case 0:
            // Navigate to DocVault page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );

              break;
            case 1:
            // Navigate to Share Docs page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShareDocsPage()),
              );
              break;
            case 2:
            // Navigate to Trackers page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrackersPage()),
              );
              break;
            case 3:
            // Navigate to Locate page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocatePage()),
              );
              break;
            case 4:
            // Navigate to Contact Us page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsPage()),
              );
              break;
          }
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/docvault.png')),
            label: 'DocVault',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/sharedocs.png')),
            label: 'Share Docs',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/tracker.png')),
            label: 'Trackers',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/locate.png')),
            label: 'Locate',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/contactus.png')),
            label: 'Contact Us',
          ),
        ],
      ),
    );
  }
}
