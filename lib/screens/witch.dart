import 'package:flutter/material.dart';
import 'package:tets3/screens/loginfrom.dart';

class Witch extends StatelessWidget {
  const Witch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xfffd0fbf8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => BankingApp())),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
    );
  }
}
