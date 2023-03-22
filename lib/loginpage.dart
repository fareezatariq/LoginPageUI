import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpageui/homepage.dart';
import 'package:loginpageui/slideright.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formkey1 = GlobalKey<FormState>();
  String? email, password;
  bool? _isLoading, _passVisibility;

  void initState() {
    _isLoading = false;
    _passVisibility = false;
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
                  Navigator.pop(context, SlideRight(page: HomePage()));
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
                          Icons.arrow_forward,
                          color: Colors.grey[900],
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 20,
                    bottom: 24,
                    right: MediaQuery.of(context).size.width * .15,
                    left: MediaQuery.of(context).size.width * .15),
                child: Center(
                  child: Text(
                    'Welcome Back!',
                    style: GoogleFonts.sourceCodePro(
                        fontSize: MediaQuery.of(context).size.width * .089,
                        fontWeight: FontWeight.w500,
                        color: Colors.yellowAccent),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * .15,
                    left: MediaQuery.of(context).size.width * .15),
                child: Container(
                  height: MediaQuery.of(context).size.height * .55,
                  width: MediaQuery.of(context).size.width * .75,
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 28),
                    child: Form(
                      key: _formkey1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 40),
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.sourceCodePro(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26,
                                  color: Colors.grey[900]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8, left: 8),
                            child: TextFormField(
                              cursorColor: Colors.grey[900],
                              style: TextStyle(color: Colors.grey[900]),
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    color: Colors.grey[900],
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w500),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Colors.grey[900],
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.black54,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(color: Colors.black54),
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
                                if (value.isNotEmpty ||
                                    value.length < 4 ||
                                    !emailValid) {
                                  return 'Please Enter Correct Value';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 20, right: 8, left: 8),
                            child: TextFormField(
                              cursorColor: Colors.grey[900],
                              style: TextStyle(color: Colors.grey[900]),
                              obscureText: !_passVisibility!,
                              decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _passVisibility = !_passVisibility!;
                                  });
                                },
                                child: Icon(
                                  !_passVisibility!
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey[700],
                                ),
                              )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('Forget my password');
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top: 12, right: 6),
                              child: Container(
                                child: Text(
                                  'Forget Password?',
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
