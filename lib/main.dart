import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mail_authentication/screens/sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyCZvj2XHYEJb0SMxEZk05wPscBSYnvxQ5Q",
      appId: "1:1033049181533:web:ee53cbd0e190863512ecb4",
      messagingSenderId: "1033049181533",
      projectId: "emailauth-69d9f",
      storageBucket: "emailauth-69d9f.appspot.com",
    ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppSignInScreen(),
    );
  }
}
