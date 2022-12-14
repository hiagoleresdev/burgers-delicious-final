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
    apiKey: 'AIzaSyAGifiiUolVrX1YxnIHMZidbvVHbaWhMn0',
    appId: '1:514375194670:web:d4ed3944f0a316218367bf',
    messagingSenderId: '514375194670',
    projectId: 'burgers-delicious-52390',
    authDomain: 'burgers-delicious-52390.firebaseapp.com',
    storageBucket: 'burgers-delicious-52390.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC8tYsInG2RssaVOWbK4T9eDKVpxYK0EHo',
    appId: '1:514375194670:android:3b0b2b5c6db3f13a8367bf',
    messagingSenderId: '514375194670',
    projectId: 'burgers-delicious-52390',
    storageBucket: 'burgers-delicious-52390.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBQT0wQ_ZuS1-nXaFG0fF8NUnlxurmIhY',
    appId: '1:514375194670:ios:23f82d77f657d5758367bf',
    messagingSenderId: '514375194670',
    projectId: 'burgers-delicious-52390',
    storageBucket: 'burgers-delicious-52390.appspot.com',
    iosClientId: '514375194670-eca91odcopifhd63k3t3c2v0885rc40f.apps.googleusercontent.com',
    iosBundleId: 'com.example.lanchoneteTeste',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBQT0wQ_ZuS1-nXaFG0fF8NUnlxurmIhY',
    appId: '1:514375194670:ios:23f82d77f657d5758367bf',
    messagingSenderId: '514375194670',
    projectId: 'burgers-delicious-52390',
    storageBucket: 'burgers-delicious-52390.appspot.com',
    iosClientId: '514375194670-eca91odcopifhd63k3t3c2v0885rc40f.apps.googleusercontent.com',
    iosBundleId: 'com.example.lanchoneteTeste',
  );
}
