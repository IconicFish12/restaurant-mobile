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
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/image/pic-remove'))),
              ),
            ),
            ListTile(
              leading: Icon(
                PhosphorIcons.userCircleBold,
                color: Colors.black,
              ),
              title: Text(
                'My Profile',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 16.7, fontWeight: FontWeight.w600)),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                PhosphorIcons.clipboardTextBold,
                color: Colors.black,
              ),
              title: Text(
                'My Order',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 16.7, fontWeight: FontWeight.w600)),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                PhosphorIcons.gearBold,
                color: Colors.black,
              ),
              title: Text(
                'Setting',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 16.7, fontWeight: FontWeight.w600)),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
