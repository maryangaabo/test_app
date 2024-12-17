import 'package:flutter/material.dart';
import 'package:tets3/account/personal_profile.dart';
import 'package:tets3/screens/homepage.dart';
import 'package:tets3/screens/loginfrom.dart';
import 'package:tets3/screens/witch.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedPage = 0;

  // List of pages corresponding to each tab
  final List<Widget> pages = [
    const BankingApp(),
    const Witch(),
    const Profile(), // Replace with another page if needed to avoid recursion
  ];
  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Icon(Icons.logout),
          content: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Homepage())); // Close the dialog
                // Add your logout logic here
              },
              child: Icon(Icons.logout),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xfffd0fbf8),
      appBar: AppBar(
        backgroundColor: const Color(0Xfffd0fbf8),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => BankingApp())),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Center(
          child: Text(
            "HOME",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            size: 36,
            color: Colors.black,
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(13),
            width: 350,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 36,
                color: Colors.red,
              ),
              title: Text(
                "Personal Info",
                style: TextStyle(fontSize: 19),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PersonalProfile()));
                },
                icon: Icon(
                  Icons.arrow_forward,
                  size: 28,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(13),
            width: 350,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: _showLogoutDialog,
                child: Icon(
                  Icons.logout,
                  size: 36,
                  color: Colors.red,
                ),
              ),
              title: Text(
                "LOG OUT",
                style: TextStyle(fontSize: 19),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 219, 240, 250),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedPage, // Highlight the selected tab
        onTap: (index) {
          setState(() {
            selectedPage = index; // Update the selected page
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 34),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_display, size: 44),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 54),
            label: '',
          ),
        ],
      ),
      // Display the selected page
    );
  }
}
