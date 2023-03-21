import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 120, bottom: 22),
              child:Center(
                child: Text('Hello', style: GoogleFonts.sourceCodePro(
                  fontWeight: FontWeight.w500,
                  fontSize: 50,
                  color: Colors.yellowAccent ),),
              ) ,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
