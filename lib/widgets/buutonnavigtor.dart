// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:tets3/screens/loginfrom.dart';
// import 'package:tets3/screens/profile/profile.dart';
// import 'package:tets3/screens/witch.dart';

// class ButtonNavigator extends StatefulWidget {
//   const ButtonNavigator({Key? key}) : super(key: key);

//   @override
//   State<ButtonNavigator> createState() => _ButtonNavigatorState();
// }

// class _ButtonNavigatorState extends State<ButtonNavigator> {
//   int selectedPage = 0;

//   final List<Widget> pageList = [
//     const BankingApp(),
//     const Witch(),
//     const Profile(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pageList[selectedPage],
//       bottomNavigationBar: Builder(
//         builder: (context) => Container(
//           width: double.infinity,
//           height: 70,
//           color: Colors.white,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 7),
//             child: GNav(
//               gap: 8,
//               backgroundColor: Colors.white,
//               color: const Color(0xff874ecf),
//               activeColor: const Color(0xff874ecf),
//               padding: const EdgeInsets.all(18),
//               onTabChange: (index) {
//                 setState(() {
//                   selectedPage = index;
//                 });
//               },
//               tabs: [
//                 GButton(
//                   icon: Icons.home,
//                   iconSize: 30,
//                   text: "Home",
//                 ),
//                 GButton(
//                   icon: Icons.class_rounded,
//                   iconSize: 30,
//                   text: "Class",
//                 ),
//                 GButton(
//                   icon: Icons.person,
//                   iconSize: 30,
//                   text: "My Account",
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
