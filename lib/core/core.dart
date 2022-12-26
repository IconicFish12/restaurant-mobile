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

AppBar userAppBar({Widget? leading}) => AppBar();
