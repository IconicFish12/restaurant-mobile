import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

var primaryColor = const Color(0xFFef5349);

AppBar costumAppBar({List<Widget>? actions}) => AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {
        print("Tapped");
      },
      icon: Icon(
        PhosphorIcons.list,
        size: 20,
        color: Colors.black,
      ),
    ),
    title: Text(
      "Vanuski Restaurant",
      style: GoogleFonts.poppins(
          textStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
    ),
    actions: actions);
