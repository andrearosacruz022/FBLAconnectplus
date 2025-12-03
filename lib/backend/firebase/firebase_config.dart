import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCY9AOF6ayxs9L7MR7fLZhC9KWIiNW9_Oo",
            authDomain: "fblaconnect-1b2a4.firebaseapp.com",
            projectId: "fblaconnect-1b2a4",
            storageBucket: "fblaconnect-1b2a4.firebasestorage.app",
            messagingSenderId: "262515892781",
            appId: "1:262515892781:web:36a2a7e61df93f5a19cea4"));
  } else {
    await Firebase.initializeApp();
  }
}
