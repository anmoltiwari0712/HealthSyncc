import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/sharedocs.dart';
import 'package:healthsyncc/pages/trackers.dart';
import 'package:healthsyncc/pages/contactus.dart';
import 'package:healthsyncc/pages/mainpage.dart';
import 'package:healthsyncc/pages/setting.dart';

class LocatePage extends StatelessWidget {
  List<Map<String, dynamic>> hospitalData = [
    {
      'hospitalName': 'Chinook Hospital',
      'imagePath': 'assets/hosp1.png',
      'distance': '2 km away',
      'review': '4.5 (17 Reviews)',
    },
    {
      'hospitalName': 'National Hospital',
      'imagePath': 'assets/hosp2.png',
      'distance': '5 km away',
      'review': '4.5 (12 Reviews)',
    },
    {
      'hospitalName': 'Appolo Hospital',
      'imagePath': 'assets/hosp3.png',
      'distance': '7 km away',
      'review': '4.1 (4 Reviews)',
    },
    // Add more similar entries for other hospitals
  ];

  List<Map<String, dynamic>> pharmacyData = [
    {
      'pharmacyName': 'Virgo Pharma',
      'imagePath': 'assets/pharm2.jpg',
      'distance': '0.5 km away',
      'review': '4.5 (7 Reviews)',
    },
    {
      'pharmacyName': 'Kuntal Pharma',
      'imagePath': 'assets/pharm1.jpg',
      'distance': '4 km away',
      'review': '4.5 (47 Reviews)',
    },
    {
      'pharmacyName': 'Dushyant Pharma',
      'imagePath': 'assets/pharm3.jpg',
      'distance': '8 km away',
      'review': '4.5 (32 Reviews)',
    },
    // Add more similar entries for other hospitals
  ];

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
          SizedBox(height: 20),
          Text(
            'Hospitals Nearby', // Heading for hospitals nearby
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // Add the ListView for horizontally scrollable hospital cards here
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hospitalData.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 153,
                  height: 123,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          hospitalData[index]['imagePath'],
                          width: double.infinity,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        // Left padding here
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hospitalData[index]['hospitalName'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              hospitalData[index]['distance'],
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  hospitalData[index]['review'],
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          //   Pharmacy Begins
          SizedBox(height: 10),
          Text(
            'Pharmacy Nearby', // Heading for hospitals nearby
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // Add the ListView for horizontally scrollable hospital cards here
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pharmacyData.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 153,
                  height: 123,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          pharmacyData[index]['imagePath'],
                          width: double.infinity,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        // Left padding here
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pharmacyData[index]['pharmacyName'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              pharmacyData[index]['distance'],
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  pharmacyData[index]['review'],
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
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
