import 'package:bikergo/allscreens/loginScreen.dart';
import 'package:bikergo/allscreens/mainScreen.dart';
import 'package:bikergo/allscreens/registerScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

DatabaseReference usersRef = FirebaseDatabase.instance.ref().child("users");

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BikerGo',
      theme: ThemeData(
        fontFamily: "Brand Bold",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginScreen.idscreen,
      routes: {
        RegisterScreen.idscreen:(context) => RegisterScreen(),
        LoginScreen.idscreen:(context) => LoginScreen(),
        MainScreen.idscreen:(context)=> MainScreen(),
      },
      debugShowCheckedModeBanner: false,
      //home: const LoginScreen(),
    );
  }
}

