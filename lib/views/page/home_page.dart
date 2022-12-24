import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vanushki_restaurant/core/core.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: costumAppBar(actions: [
        IconButton(
            onPressed: () {
              print('Tapped');
            },
            icon: Icon(
              PhosphorIcons.signIn,
              color: Colors.black,
            ))
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              color: primaryColor,
              child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
