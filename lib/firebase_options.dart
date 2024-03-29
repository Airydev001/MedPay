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
    apiKey: 'AIzaSyDyW2Uqqn3GorQy4VTsQmR7XQJoDMJ_rgE',
    appId: '1:769641249180:web:6e3e3aff0af4168d3ff059',
    messagingSenderId: '769641249180',
    projectId: 'debbie-project-c7f18',
    authDomain: 'debbie-project-c7f18.firebaseapp.com',
    databaseURL: 'https://debbie-project-c7f18-default-rtdb.firebaseio.com',
    storageBucket: 'debbie-project-c7f18.appspot.com',
    measurementId: 'G-7JHDV39QLG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAw6UGkdvU8DN23AntdehQlU-UHiG6aOdA',
    appId: '1:769641249180:android:b15aaab2c5f1ef973ff059',
    messagingSenderId: '769641249180',
    projectId: 'debbie-project-c7f18',
    databaseURL: 'https://debbie-project-c7f18-default-rtdb.firebaseio.com',
    storageBucket: 'debbie-project-c7f18.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6-vfU5W3BqLO-zvJjCdUvbvkH9YDilAA',
    appId: '1:769641249180:ios:e755050020bd07303ff059',
    messagingSenderId: '769641249180',
    projectId: 'debbie-project-c7f18',
    databaseURL: 'https://debbie-project-c7f18-default-rtdb.firebaseio.com',
    storageBucket: 'debbie-project-c7f18.appspot.com',
    iosClientId: '769641249180-u6lrgcj1g2ir8np8im8tk35kneq5g6kq.apps.googleusercontent.com',
    iosBundleId: 'com.example.medPay',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6-vfU5W3BqLO-zvJjCdUvbvkH9YDilAA',
    appId: '1:769641249180:ios:408919e457eaa0ca3ff059',
    messagingSenderId: '769641249180',
    projectId: 'debbie-project-c7f18',
    databaseURL: 'https://debbie-project-c7f18-default-rtdb.firebaseio.com',
    storageBucket: 'debbie-project-c7f18.appspot.com',
    iosClientId: '769641249180-r8jol811fkcnf61ve3e01li6hj7meq4p.apps.googleusercontent.com',
    iosBundleId: 'com.example.medPay.RunnerTests',
  );
}
