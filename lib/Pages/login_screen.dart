import 'package:consumer/Pages/Homepage.dart';
import 'package:consumer/Pages/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = "login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true; // State variable to manage password visibility
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late String loginemail;
  // ignore: non_constant_identifier_names
  late String login_password;
  bool _isFarmer = false;
  bool _isConsumer = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background Image
            Image.asset(
              "assets/images/Design 1.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    // Top Image instead of Carrot Icon

                    const Center(
                      child: Image(
                        image: AssetImage("assets/images/Group.png"),
                        width: 60.0, // Adjust size as needed
                        height: 60.0, // Adjust size as needed
                      ),
                    ),
                    const SizedBox(
                        height: 50.0), // Gap between image and "Logging" text

                    // Logging Text
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Logging",
                        style: TextStyle(
                          fontSize: 32.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),

                    // Enter Your Email and Password Text
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter Your email and Password",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black26,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40.0), // Space before text fields

                    // Email Label
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black26,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    // Email Text Field
                    TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        setState(() {
                          loginemail = value;
                        });
                      },
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                      ),
                      style: const TextStyle(
                          color: Colors.black), // Text color set to black
                    ),
                    const SizedBox(height: 20.0),

                    // Password Label
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black26,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    // Password Text Field
                    TextField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      onChanged: (value) {
                        setState(() {
                          login_password = value;
                        });
                      },

                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? FontAwesomeIcons.eyeSlash
                                : FontAwesomeIcons.eye,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                      style: const TextStyle(
                          color: Colors.black), // Text color set to black
                    ),
                    const SizedBox(height: 30.0), // Space before login button
                    Row(
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                            title: const Text("Farmer"),
                            value: _isFarmer,
                            onChanged: (newValue) {
                              setState(() {
                                _isFarmer = newValue!;
                                _isConsumer =
                                    !newValue; // Ensure only one can be selected
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            activeColor: const Color.fromARGB(255, 45, 218, 51),
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                        Expanded(
                          child: CheckboxListTile(
                            title: const Text("Consumer"),
                            value: _isConsumer,
                            onChanged: (newValue) {
                              setState(() {
                                _isConsumer = newValue!;
                                _isFarmer =
                                    !newValue; // Ensure only one can be selected
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            activeColor: const Color.fromARGB(255, 45, 218, 51),
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                      ],
                    ),
                    // Login Button
                    const SizedBox(
                      height: 12.0,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final cred = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: loginemail, password: login_password);
                        if (cred.user != null) {
                          String userType = _isFarmer ? "Farmer" : "Consumer";
                          // Navigate to the appropriate screen based on userType
                          if (userType == "Farmer") {
                            // Navigate to Farmer page
                            Navigator.pushReplacementNamed(context, Homepage.id);
                          } else {
                            // Navigate to Consumer page
                            Navigator.pushNamed(context, "/consumerPage");
                          }
                        } else {
                          throw "Error Loading Data";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 45, 218, 51),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * 0.8, 50.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ), // Reduced space between login button and text
                    // Signup Text
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Doesn't have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SignupPage.id);
                          },
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                              color: Color.fromARGB(255, 45, 218, 51),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                        height: 100.0), // Adjust the space from bottom
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
