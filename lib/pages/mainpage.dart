import 'package:flutter/material.dart';
import 'package:healthsyncc/pages/sharedocs.dart';
import 'package:healthsyncc/pages/trackers.dart';
import 'package:healthsyncc/pages/locate.dart';
import 'package:healthsyncc/pages/contactus.dart';
import 'package:healthsyncc/pages/setting.dart';
import 'package:healthsyncc/pages/medicalrecords.dart';
import 'package:healthsyncc/pages/labresults.dart';
import 'package:healthsyncc/pages/allergyinformation.dart';
import 'package:healthsyncc/pages/livingwill.dart';
import 'package:healthsyncc/pages/insurance.dart';
import 'package:healthsyncc/pages/adddocs.dart';



class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> boxTexts = [
      'Medical Records',
      'Lab Results',
      'Allergy Information',
      'Living Will',
      'Insurance Details',
      'Add Docs',
    ];

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search your medical docs...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: List.generate(
                  6,
                      (index) {
                    return GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MedicalRecordsPage()),
                            );
                            break;
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LabResultsPage()),
                            );
                            break;
                        // Repeat the same for other cases...
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AllergyInformation()),
                            );
                            break;
                          case 3:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LivingWill()),
                            );
                            break;
                          case 4:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => InsuranceDetails()),
                            );
                            break;
                          case 5:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AddDocs()),
                            );
                            break;

                          default:
                          // Handle default case or do nothing
                            break;
                        }
                        // Redirect to new page based on index
                        // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()));
                        // Replace `NewPage()` with the desired page widget
                      },
                      child: Container(
                        width: 91,
                        height: 91,
                        decoration: BoxDecoration(
                          color: Color(0xFFCEDEBD),
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img$index.png', // Replace with your image path
                              width: 40,
                              height: 40,
                              // Set your image properties here
                            ),
                            SizedBox(height: 4),
                            Text(
                              boxTexts[index], // Using different texts
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/documents.png', // Replace with your document image path
                width: 309,
                height: 205,
                // Set your image properties here
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
      //  Bottom Navigation bar begins here copy these to implement in other pages too
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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
    //   Bottom navigation bar ends here......
    );
  }
}
