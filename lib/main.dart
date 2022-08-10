import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // We're using the manual installation on non-web platforms since Google sign in plugin doesn't yet support Dart initialization.
  // See related issue: https://github.com/flutter/flutter/issues/96391
  if (!kIsWeb) {
    await Firebase.initializeApp();
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCmJ92IPrY6L7hMNlJvmYBezC2HDzbypMQ",
          authDomain: "electronic-shop-b4d35.firebaseapp.com",
          projectId: "electronic-shop-b4d35",
          storageBucket: "electronic-shop-b4d35.appspot.com",
          messagingSenderId: "626087408026",
          appId: "1:626087408026:web:2f1a9854a5ac0c90b68a23",
          measurementId: "G-2W3ZD9FKJN"),
    );
  }

  //await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(
    MyGetMaterialApp(),
  );
}

class MyGetMaterialApp extends StatelessWidget {
  const MyGetMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider<AuthenticationService>(
        //   create: (_) => AuthenticationService(FirebaseAuth.instance),
        // ),
      ],
      child: GetMaterialApp(
        theme: a,
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

final ThemeData a = ThemeData.light();
