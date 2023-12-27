import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/sharedocs.dart';
import 'package:healthsyncc/pages/trackers.dart';
import 'package:healthsyncc/pages/locate.dart';
import 'package:healthsyncc/pages/contactus.dart';
import 'package:healthsyncc/pages/mainpage.dart';
import 'package:healthsyncc/pages/editprofile.dart';
import 'package:healthsyncc/pages/privacypolicy.dart';
import 'package:healthsyncc/pages/appversion.dart';



class SettingsPage extends StatelessWidget {
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
                    'Anmol Tiwari',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildSettingItem(
              title: 'Profile Setting',
              image: 'assets/profile.png',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
              },
            ),
            _buildSettingItem(
              title: 'Privacy Policy',
              image: 'assets/privacy.png',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyPage()));
              },
            ),
            _buildSettingItem(
              title: 'App Version',
              image: 'assets/appversion.png',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AppVersionPage()));
              },
            ),
            _buildSettingItem(
              title: 'Help & Support',
              image: 'assets/help.png',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUsPage()));
              },
            ),
            _buildSettingItem(
              title: 'Log Out',
              image: 'assets/logout.png',
              onTap: () {
                _showLogoutConfirmationDialog(context);
              },
            ),
          ],
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShareDocsPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrackersPage()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocatePage()),
              );
              break;
            case 4:
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

  Widget _buildSettingItem({
    required String title,
    required String image,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          width: double.infinity,
          height: 68,
          decoration: BoxDecoration(
            color: Color(0xFFCEDEBD),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  image,
                  width: 52,
                  height: 52,
                ),
              ),
              SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(

          backgroundColor: Color(0xFF9EB384),
          title: Text('Log Out'),
          content: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _performLogout(context);
              },
              child: Text('Log Out'),
            ),
          ],
        );
      },
    );
  }

  void _performLogout(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/login');
  }
}
