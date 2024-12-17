import 'package:flutter/material.dart';
import 'package:tets3/screens/homelsc.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homelsc()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xfffd0fbf8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "TEST APP  ",
              style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
