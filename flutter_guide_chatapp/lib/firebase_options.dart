// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDvYMNW_pKWd4ACLa69Ebc69O4oz-ioumg',
    appId: '1:760162564513:web:805943c635c51f7a0573e0',
    messagingSenderId: '760162564513',
    projectId: 'flutter-chat-288c7',
    authDomain: 'flutter-chat-288c7.firebaseapp.com',
    storageBucket: 'flutter-chat-288c7.appspot.com',
    measurementId: 'G-ZZ5G7PMGMT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnvKVvqhKKiFNJHJ16crx37crTDJxq5jo',
    appId: '1:760162564513:android:f747b317b4bab1fc0573e0',
    messagingSenderId: '760162564513',
    projectId: 'flutter-chat-288c7',
    storageBucket: 'flutter-chat-288c7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1oMSiWfC6Dm1k_jRYuIkAVsrBFwWLUtY',
    appId: '1:760162564513:ios:99735c91916684010573e0',
    messagingSenderId: '760162564513',
    projectId: 'flutter-chat-288c7',
    storageBucket: 'flutter-chat-288c7.appspot.com',
    iosClientId: '760162564513-muh0hc74m68pmff1rmmsb4adg9qk8krm.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterguidechatapp',
  );
}
