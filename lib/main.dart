import 'package:flutter/material.dart';
import 'package:untitled2/screens/registrationscreen.dart';
import 'screens/loginpage.dart';
import 'screens/mainpage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A random app',
      debugShowCheckedModeBanner: false,
      initialRoute: '/loginpage',
      routes: {
        '/loginpage': (context)=>const LoginPage(),
        '/mainpage': (context)=>const MainPage(),
        '/registrationpage': (context)=> const RegistrationPage(),
      },
    );
  }
}
