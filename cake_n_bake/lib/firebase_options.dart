import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBLYYqbMtrEeeU1vDT2k0DQq24AVerLAYs',
    appId: '1:1029837436106:web:8708b942d55a24db38b033',
    messagingSenderId: '1029837436106',
    projectId: 'cakenbake-e9912',
    authDomain: 'cakenbake-e9912.firebaseapp.com',
    storageBucket: 'cakenbake-e9912.firebasestorage.app',
    measurementId: 'G-8K0618E9VR',
  );

  // You'll need to replace these with your actual Firebase configuration

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlX-AgplDcwJQ8-I8DI-CHQOS5OFSc99g',
    appId: '1:1029837436106:android:e6553477ee5c061b38b033',
    messagingSenderId: '1029837436106',
    projectId: 'cakenbake-e9912',
    storageBucket: 'cakenbake-e9912.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgDwFagv90JUyrrSWLg7_7IPvNVTrXHDw',
    appId: '1:1029837436106:ios:f3892530a20492de38b033',
    messagingSenderId: '1029837436106',
    projectId: 'cakenbake-e9912',
    storageBucket: 'cakenbake-e9912.firebasestorage.app',
    iosBundleId: 'com.example.cakeNBake',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgDwFagv90JUyrrSWLg7_7IPvNVTrXHDw',
    appId: '1:1029837436106:ios:f3892530a20492de38b033',
    messagingSenderId: '1029837436106',
    projectId: 'cakenbake-e9912',
    storageBucket: 'cakenbake-e9912.firebasestorage.app',
    iosBundleId: 'com.example.cakeNBake',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBLYYqbMtrEeeU1vDT2k0DQq24AVerLAYs',
    appId: '1:1029837436106:web:aafa7cda335f341438b033',
    messagingSenderId: '1029837436106',
    projectId: 'cakenbake-e9912',
    authDomain: 'cakenbake-e9912.firebaseapp.com',
    storageBucket: 'cakenbake-e9912.firebasestorage.app',
    measurementId: 'G-ZFJ9ZQHVEP',
  );

}