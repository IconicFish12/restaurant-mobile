import 'package:dio/dio.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

var primaryColor = const Color(0xFFef5349);
var dio = new Dio();

AppBar homeAppBar({List<Widget>? actions, Widget? leading}) => AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: primaryColor,
    leading: leading,
    title: Text(
      "Vanuski Restaurant",
      style: GoogleFonts.poppins(
          textStyle: TextStyle(fontWeight: FontWeight.w600)),
    ),
    actions: actions);

AppBar userAppBar({Widget? leading}) => AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    );

Drawer appDrawer(BuildContext context) => Drawer(
    elevation: 0,
    child: Column(
      children: [
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: primaryColor),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('asset/image/profilepicture.png'),
            ),
            accountName: Text(
              "Ibnu Syawal Aliefian",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontWeight: FontWeight.w600)),
            ),
            accountEmail: Text(
              'superglidingogre0571@gmail.com',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontWeight: FontWeight.w600)),
            )),
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
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            PhosphorIcons.chatsBold,
            color: Colors.black,
          ),
          title: Text(
            'Contact Us',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 16.7, fontWeight: FontWeight.w600)),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const Divider(
          thickness: 2,
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
            Navigator.pop(context);
          },
        ),
        Container(
          padding: EdgeInsetsDirectional.only(top: 300),
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.bottomLeft,
          child: ElevatedButton.icon(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(primaryColor)),
              onPressed: () {},
              icon: Icon(
                PhosphorIcons.signOutBold,
              ),
              label: Text('Log Out',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontWeight: FontWeight.w600)))),
        ),
      ],
    ));
