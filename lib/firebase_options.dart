// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyATmXMPbJ7SiD9Kn9VWeILLILAy2Z07Js8',
    appId: '1:229294121279:web:0e80d23b84bb3d4bd2738a',
    messagingSenderId: '229294121279',
    projectId: 'agrilink-50bd8',
    authDomain: 'agrilink-50bd8.firebaseapp.com',
    storageBucket: 'agrilink-50bd8.appspot.com',
    measurementId: 'G-KC8CMN9297',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyATmXMPbJ7SiD9Kn9VWeILLILAy2Z07Js8',
    appId: '1:229294121279:web:5cc9caef430ef97bd2738a',
    messagingSenderId: '229294121279',
    projectId: 'agrilink-50bd8',
    authDomain: 'agrilink-50bd8.firebaseapp.com',
    storageBucket: 'agrilink-50bd8.appspot.com',
    measurementId: 'G-GZ9H6Y6M2S',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBrJbyA1ANUFoxI1W1HiCWFqWxafUW9A1U',
    appId: '1:229294121279:ios:ad40f33ff0e58061d2738a',
    messagingSenderId: '229294121279',
    projectId: 'agrilink-50bd8',
    storageBucket: 'agrilink-50bd8.appspot.com',
    iosBundleId: 'com.example.consumer',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBrJbyA1ANUFoxI1W1HiCWFqWxafUW9A1U',
    appId: '1:229294121279:ios:ad40f33ff0e58061d2738a',
    messagingSenderId: '229294121279',
    projectId: 'agrilink-50bd8',
    storageBucket: 'agrilink-50bd8.appspot.com',
    iosBundleId: 'com.example.consumer',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBe_dslv4RiVgLmTtU5pGudyZVe7GjV56M',
    appId: '1:229294121279:android:1181b0732e499c12d2738a',
    messagingSenderId: '229294121279',
    projectId: 'agrilink-50bd8',
    storageBucket: 'agrilink-50bd8.appspot.com',
  );

}