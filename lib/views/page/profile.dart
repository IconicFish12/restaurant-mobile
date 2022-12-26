import 'package:flutter/material.dart';
import 'package:vanushki_restaurant/core/core.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: userAppBar(leading: Container()),
      body: SingleChildScrollView(
        physics: PageScrollPhysics(),
        child: Column(
          
        ),
      ),
    );
  }
}