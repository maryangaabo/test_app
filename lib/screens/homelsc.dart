import 'package:flutter/material.dart';
import 'package:tets3/screens/Register.dart';

class Homelsc extends StatelessWidget {
  const Homelsc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0Xfffd0fbf8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/bgbacgrpond.png",
              width: screenWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Every great journey begins with asingle step.Let Nafis Consulting help you\n take it",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 330,
              height: 50,
              child: ElevatedButton(
                  onPressed: () async {
                    {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => Center(
                                child: CircularProgressIndicator(),
                              ));
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.of(context).pop(context);
                    }

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: const Color(0Xfff6b3e0),
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 23),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
