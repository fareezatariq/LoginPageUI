import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpageui/loginpage.dart';
import 'package:loginpageui/signuppage.dart';
import 'package:loginpageui/slideleft.dart';
import 'package:loginpageui/slideright.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                child: Center(
                  child: Text(
                    'Hello',
                    style: GoogleFonts.sourceCodePro(
                        fontWeight: FontWeight.w500,
                        fontSize: 50,
                        color: Colors.yellowAccent),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.push(context, SlideRight(page: SignupPage()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * .55,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.only(right: 22, top: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                'SignUp',
                                style: GoogleFonts.sourceCodePro(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[900],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 10),
                              child: Text(
                                'New Here?',
                                style: GoogleFonts.sourceCodePro(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.grey[900]),
                              ),
                            ),
                            Text(
                              'Just SignUp to gain access to the app',
                              style: GoogleFonts.sourceCodePro(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[900]),
                              textAlign: TextAlign.right,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.push(context, SlideLeft(page: LoginPage()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * .45,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.only(left: 22, top: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text('SignIn', style: GoogleFonts.sourceCodePro(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[900]
                              ),),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 8, bottom: 10),
                            child: Text('Returning?', style: GoogleFonts.sourceCodePro(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[900]
                            ),),),
                            Text('Just SignIn to continue with the app', style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Colors.grey[900],
                            ),
                            textAlign: TextAlign.left,)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Padding(
                padding:EdgeInsets.only(top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(right: 8),
                    child: Container(
                      height: 48,
                        width: 48,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                          )
                        ],
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: FaIcon(FontAwesomeIcons.youtube,
                        color: Colors.white,),
                      ),
                    ),),
                    Padding(padding: EdgeInsets.only(right: 8),
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            boxShadow: [
                              BoxShadow(color: Colors.grey)
                            ],
                            shape: BoxShape.circle
                        ),
                        child: Center(
                          child: FaIcon(FontAwesomeIcons.twitter,
                            color: Colors.white,),
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent[700],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                          )
                        ],
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: FaIcon(FontAwesomeIcons.facebook,
                        color: Colors.white,),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
