import 'package:flutter/material.dart';
import 'package:tets3/screens/homelsc.dart';

class Concaguratoin extends StatelessWidget {
  const Concaguratoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),
      body: Column(
        children: [
          SizedBox(
            height: 230,
          ),
          Center(
            child: Container(
              width: 290,
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 194, 216, 233),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Image.asset(
                  "assets/blue-verified-tick-vector-icon-blue-verified-symbol_302321-417-removebg-preview.png"),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            "You successfully maked a payment,\n  enjoy our servic e!",
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Homelsc()), // Replace `MaPage` with your widget class
                );
              },
              child: const Text(
                'BACK',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 2,
                backgroundColor: const Color(0Xfff6b3e0),
                foregroundColor: Colors.white,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                minimumSize: const Size(double.infinity, 49),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
