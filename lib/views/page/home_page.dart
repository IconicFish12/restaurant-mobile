import 'dart:ui';

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
      appBar: homeAppBar(
          actions: [
            IconButton(
                onPressed: () {
                  print('Tapped');
                },
                icon: Icon(
                  PhosphorIcons.signIn,
                ))
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  // Use the `BuildContext` of the `Builder` to find the `Scaffold`
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          )),
      drawer: appDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0))),
              child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [Container(), Container()],
                      )
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 2.0),
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
