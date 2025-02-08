import 'package:flutter/material.dart';
import 'package:tets3/account/profile.dart';
import 'package:tets3/screens/witch.dart';
import 'package:tets3/screens/withdrow.dart';

class BankingApp extends StatefulWidget {
  const BankingApp({super.key});

  @override
  State<BankingApp> createState() => _BankingAppState();
}

class _BankingAppState extends State<BankingApp> {
  final List<String> cards = ["1234", "5678", "9101", "1121"];

  String selectedCard = "1234"; // Ensure this matches an item in the list
  int selectedPage = 0;

  final List<Widget> pages = [
    const BankingApp(),
    const Witch(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xfffd0fbf8),
      appBar: AppBar(
        backgroundColor: const Color(0Xfffd0fbf8),
        elevation: 0,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Earn",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Income:",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "\$0",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/image.png', // Replace with your card image
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 8),
                      const Text("Master Card"),
                    ],
                  ),
                  DropdownButton<String>(
                    value: selectedCard,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCard = newValue!;
                      });
                    },
                    items: cards.map<DropdownMenuItem<String>>((String card) {
                      return DropdownMenuItem<String>(
                        value: card,
                        child: Text(card),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Withdrow()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0Xfff6b3e0),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                "Withdrawal",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(26),
              decoration: BoxDecoration(
                color: const Color(0XFFb4cffa),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "Mudane/Marwo\n"
                "Haddii celid jirto, la xiriir:\n"
                "Number: +252 771816014\n"
                "Markale Soo Dhawaaw.",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
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
          // Navigate to the corresponding page
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => pages[index]),
          );
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
    );
  }
}
