import 'package:consumer/Pages/Homepage.dart';
import 'package:consumer/Pages/Logo_loading_Screen_at_starting.dart';
import 'package:consumer/Pages/login_screen.dart';
import 'package:consumer/Pages/onboard.dart';
import 'package:consumer/Pages/signup_page.dart';
import 'package:consumer/bottom_naivgationbar_pages/Account.dart';
import 'package:consumer/bottom_naivgationbar_pages/Cart.dart';
import 'package:consumer/bottom_naivgationbar_pages/Explore.dart';
import 'package:consumer/bottom_naivgationbar_pages/Favourite.dart';
import 'package:consumer/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnBoard.id: (context) => const OnBoard(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignupPage.id: (context) => const SignupPage(),
        Homepage.id: (context) => const Homepage(),
        Explore.idd: (context) => const Explore(),
        Cart.idd: (context) => const Cart(),
        Favourite.idd: (context) => const Favourite(),
        Account.idd: (context) => const Account(),
      },
    );
  }
}
