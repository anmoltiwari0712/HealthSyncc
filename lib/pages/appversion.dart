import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/sharedocs.dart';
import 'package:healthsyncc/pages/trackers.dart';
import 'package:healthsyncc/pages/locate.dart';
import 'package:healthsyncc/pages/contactus.dart';
import 'package:healthsyncc/pages/mainpage.dart';

class AppVersionPage extends StatelessWidget {
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
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
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
                      'App Version',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader('App Version:'),
                  buildText('2.0.0'),
                  SizedBox(height: 20),
                  buildHeader('Release Date:'),
                  buildText('September 15, 2023'),
                  SizedBox(height: 20),
                  buildHeader('What\'s New:'),
                  buildBulletPoint('Exciting new features!'),
                  buildBulletPoint('Improved user interface.'),
                  buildBulletPoint('Enhanced performance and security.'),
                  buildBulletPoint('Bug fixes and compatibility updates.'),
                  SizedBox(height: 20),
                  buildHeader('Known Issues:'),
                  buildBulletPoint('Push notification delay on some Android devices (fix in progress).'),
                  SizedBox(height: 20),
                  buildHeader('Feedback and Support:'),
                  buildBulletPoint('Your input is important. Contact us at support@healthsyncc.com with feedback or issues.'),
                  SizedBox(height: 20),
                  buildHeader('Rate and Share:'),
                  buildBulletPoint('Enjoy the app? Leave a rating and share this update with friends!'),
                ],
              ),
            ],
          ),
        ),
      ),
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
  Widget buildHeader(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 16,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Widget buildText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
    );
  }

  Widget buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 8),
        Icon(Icons.arrow_right, size: 16),
        SizedBox(width: 8),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}


// Widgets for headers, text, and bullet points...

// Same as before...


