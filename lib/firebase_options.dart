// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCpE0tstb4jN6stQIv6MEutcK54xoEvKUU',
    appId: '1:485871613569:web:8c85bcc987f26bc5d5ff80',
    messagingSenderId: '485871613569',
    projectId: 'new1-26233',
    authDomain: 'new1-26233.firebaseapp.com',
    databaseURL: 'https://new1-26233-default-rtdb.firebaseio.com',
    storageBucket: 'new1-26233.appspot.com',
    measurementId: 'G-T56470E0HB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQZHFrank5aRkScOHsqgD2XWZpreWIlhg',
    appId: '1:485871613569:android:56439c94c0f169d1d5ff80',
    messagingSenderId: '485871613569',
    projectId: 'new1-26233',
    databaseURL: 'https://new1-26233-default-rtdb.firebaseio.com',
    storageBucket: 'new1-26233.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD36MZnDH3V-azhqX0g622Z8yM9iq9cI30',
    appId: '1:485871613569:ios:bff63e7e35d5a3a5d5ff80',
    messagingSenderId: '485871613569',
    projectId: 'new1-26233',
    databaseURL: 'https://new1-26233-default-rtdb.firebaseio.com',
    storageBucket: 'new1-26233.appspot.com',
    iosBundleId: 'com.example.bms',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD36MZnDH3V-azhqX0g622Z8yM9iq9cI30',
    appId: '1:485871613569:ios:76d254a655b7b829d5ff80',
    messagingSenderId: '485871613569',
    projectId: 'new1-26233',
    databaseURL: 'https://new1-26233-default-rtdb.firebaseio.com',
    storageBucket: 'new1-26233.appspot.com',
    iosBundleId: 'com.example.bms.RunnerTests',
  );
}
