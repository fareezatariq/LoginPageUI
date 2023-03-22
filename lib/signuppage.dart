import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpageui/homepage.dart';
import 'package:loginpageui/slideleft.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  String? email, name, password;
  bool? _passVisible, _isLoading;

  @override
  void initState() {
    setState(() {
      _isLoading = false;
      _passVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.pop(context, SlideLeft(page: HomePage()));
              },
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 65),
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        boxShadow: [BoxShadow(color: Colors.grey)],
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.grey[900],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * .15,
                left: MediaQuery.of(context).size.width * .15,
                top: 15,
                bottom: 15,
              ),
              child: Center(
                child: Text(
                  'Welcome Back!',
                  style: GoogleFonts.sourceCodePro(
                      color: Colors.yellowAccent, fontSize: 35),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * .15,
                left: MediaQuery.of(context).size.width * .15,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * .55,
                width: MediaQuery.of(context).size.width * .75,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.only(top: 28),
                  child: Form(
                    key: _formKey2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 18),
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.sourceCodePro(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[900]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 8,
                            left: 8,
                          ),
                          child: TextFormField(
                            cursorColor: Colors.grey[900],
                            style: TextStyle(color: Colors.grey[900]),
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.5,
                              ),
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Colors.grey[900]),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(color: Colors.black54),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(color: Colors.black54),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                name = value;
                              });
                            },
                            validator: (value) {
                              if (value!.isEmpty || value.length < 4) {
                                return "Please enter correct value";
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 8, right: 8),
                          child: TextFormField(
                            cursorColor: Colors.grey[900],
                            style: TextStyle(color: Colors.grey[900]),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.5,
                                  fontSize: 16),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.grey[900],
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(color: Colors.black54),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                            validator: (value) {
                              bool emailValid = RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value!);
                              if (value!.isEmpty ||
                                  value.length < 4 ||
                                  !emailValid) {
                                return 'Please enter correct value';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 8, right: 8),
                          child: TextFormField(
                            cursorColor: Colors.grey[900],
                            style: TextStyle(color: Colors.grey[900]),
                            obscureText: _passVisible!,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.grey[900]),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Colors.grey[900],
                                  letterSpacing: 1.5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _passVisible = !_passVisible!;
                                  });
                                },
                                child: Icon(
                                  !_passVisible!
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey[700],
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:
                                      BorderSide(color: Colors.black54)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:
                                      BorderSide(color: Colors.black54)),
                            ),
                            onChanged: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                            validator: (value){
                              if(value!.isEmpty || value.length<6){
                                return 'Please enter correct value';
                              }
                              return null;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
