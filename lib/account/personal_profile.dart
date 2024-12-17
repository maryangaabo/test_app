import 'package:flutter/material.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffD0FBF8), // Background color
      appBar: AppBar(
        backgroundColor: const Color(0XffD0FBF8),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 28),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Personal Info",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          // Profile Image and Name
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.orange[200],
            child: const Icon(
              Icons.person,
              size: 60,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Abdirahman Ismail",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Text(
            "Abukar",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),

          // Details Card
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: const [
                // Full Name
                ListTile(
                  leading: Icon(Icons.person_outline, color: Colors.red),
                  title: Text("FULL NAME",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      )),
                  subtitle: Text("Abdirahman Ismail Abukar",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      )),
                ),
                Divider(),
                // Email
                ListTile(
                  leading: Icon(Icons.mail_outline, color: Colors.blue),
                  title: Text("EMAIL",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      )),
                  subtitle: Text("ismailabdirahman744@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      )),
                ),
                Divider(),
                // Phone Number
                ListTile(
                  leading: Icon(Icons.phone_outlined, color: Colors.green),
                  title: Text("PHONE NUMBER",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      )),
                  subtitle: Text("+252 614447250",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 28),
            label: '',
          ),
        ],
      ),
    );
  }
}
