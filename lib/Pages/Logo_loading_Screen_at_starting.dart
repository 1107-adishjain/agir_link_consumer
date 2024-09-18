// import 'dart:async'; // Import the Timer library
// import 'package:consumer/Pages/onboard.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   static String id="Splash";
//   const SplashScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(const Duration(seconds: 2), () {
//       Navigator.pushNamed(context, OnBoard.id);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Center(
//               child: Image.asset(
//                 "assets/images/Logo.jpg",
//                 height: 300,
//                 width: double.maxFinite,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async'; // Import the Timer library
import 'package:consumer/classes/location_permission.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:consumer/Pages/onboard.dart';
import 'package:consumer/classes/location_permission.dart'; // Import your GetLocation class

class SplashScreen extends StatefulWidget {
  static String id = "Splash";
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      // Request location permission and get the current location
      Position position = await GetLocation().determinePosition();
      print('Current location: ${position.latitude}, ${position.longitude}');
      
      // You can store the location or use it as needed here

    } catch (e) {
      print('Error getting location: $e');
    }

    // Navigate to the OnBoard screen after initialization
    Timer(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, OnBoard.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            "assets/images/Logo.jpg",
            height: 300,
            width: double.infinity, // Adjusted to use double.infinity for proper width
          ),
        ),
      ),
    );
  }
}
