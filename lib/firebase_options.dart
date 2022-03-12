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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACmiERRytWkfsMgat_tnMpKwmXT1TY3eA',
    appId: '1:269687855683:android:b2243c42201d7c86ddd2f6',
    messagingSenderId: '269687855683',
    projectId: 'presence-app-39d61',
    storageBucket: 'presence-app-39d61.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzWFn4gmqCgK305KVx7_CbigwPE9Na3-I',
    appId: '1:269687855683:ios:01fdde43239c9d8cddd2f6',
    messagingSenderId: '269687855683',
    projectId: 'presence-app-39d61',
    storageBucket: 'presence-app-39d61.appspot.com',
    iosClientId: '269687855683-0mflgk8juhrai5mdgk2bvv1c3p3cl2ho.apps.googleusercontent.com',
    iosBundleId: 'com.azzam.presence',
  );
}
