import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/sharedocs.dart';
import 'package:healthsyncc/pages/trackers.dart';
import 'package:healthsyncc/pages/locate.dart';
import 'package:healthsyncc/pages/contactus.dart';
import 'package:healthsyncc/pages/mainpage.dart';
import 'package:healthsyncc/pages/setting.dart';
import 'package:healthsyncc/pages/medicalrecords.dart';
import 'package:healthsyncc/pages/labresults.dart';
import 'package:healthsyncc/pages/allergyinformation.dart';
import 'package:healthsyncc/pages/livingwill.dart';
import 'package:healthsyncc/pages/insurance.dart';
import 'package:healthsyncc/pages/adddocs.dart';
import 'package:healthsyncc/pages/doctype.dart';

// Other imports...

class ShareDocsPage extends StatelessWidget {
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

        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                // Navigate to SettingsPage when tapping the profile icon
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.account_circle,
                        size: 36,
                        color: Colors.black,
                      ),
                      backgroundColor: Color(0xFF9EB384),
                      radius: 20,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on), // Replace with your location icon
              SizedBox(width: 8),
              Text(
                'Vellore, India', // Replace with the user's location text
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 40),
          Image.asset(
            'assets/share.png', // Replace with your document image path
            width: 400,
            height: 259,
            // Set your image properties here
          ),
          SizedBox(height: 20),
          Text(
            'Upload Health Docs',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Center( // Wrapping the text with Center widget
            child: Text(
              'We will show the Nearby Hospitals that are Registered with Us.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DocType()),
              );
            },
            child: Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: Color(0xFF435334),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),

          // Other content if needed
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        // Bottom navigation bar implementation...
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF9EB384),
        selectedItemColor: Colors.green[100],
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
