import 'package:consumer/Pages/login_screen.dart';
import 'package:consumer/Pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnBoard extends StatefulWidget {
  static String id = "Onboard";
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            "assets/images/4e8f13cbdb37604e351d37d72a1eb837.jpeg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          // Centered Content at the bottom`
          Column(
            children: [
              const Spacer(), // Pushes the content to the bottom
              // FontAwesome Icon
              const FaIcon(
                FontAwesomeIcons.carrot,
                color: Colors.white,
                size: 45.0,
              ),
              const SizedBox(height: 20.0),
              // Welcome Text
              const Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              const Text(
                "to Our Store",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 6.0),
              // Subtitle Text
              const Text(
                "Get your groceries in as fast as one hour",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white60,
                ),
              ),
              const SizedBox(height: 30.0),
              // Continue as Farmer Button
             Center(
              child: Column(
                children: [
                   ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,LoginScreen.id);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.8,
                    60.0, // Increased height
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0), // Less circular border
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Continue as Consumer Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignupPage.id);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.8,
                    60.0, // Increased height
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0), // Less circular border
                  ),
                ),
                child: const Text(
                  "Signup",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
                ],
              ),
             ),
              const SizedBox(height: 40.0), // Add some padding to the bottom
            ],
          ),
        ],
      ),
    );
  }
}
