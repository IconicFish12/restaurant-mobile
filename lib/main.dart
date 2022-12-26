import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vanushki_restaurant/core/core.dart';
import 'package:vanushki_restaurant/views/auth/login.dart';
import 'package:vanushki_restaurant/views/auth/register.dart';
import 'package:vanushki_restaurant/views/page/home_page.dart';
import 'package:vanushki_restaurant/views/page/menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Starter(),
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/menu': (context) => MenuPage()
      },
    );
  }
}

class Starter extends StatefulWidget {
  const Starter({super.key});

  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 6),
      () {
        Navigator.pushNamed(context, '/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              padding: EdgeInsets.only(top: 20, right: 15, left: 15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/image/Vanushki (2).png'))),
            ),
          ],
        ));
  }
}
