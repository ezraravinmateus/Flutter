import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p1_login_v3/constanta.dart';
import 'package:p1_login_v3/register_page.dart';
import 'package:p1_login_v3/landing_page.dart';

import '../../services/services.dart';
import '../../models/models.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  int _counter = 0;

  final username = TextEditingController();
  final password = TextEditingController();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        //=key: _scaffoldKey,
        body: Stack(
      children: <Widget>[
        Positioned(
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "E-COMMERCE: LOGIN HERE",
                    style: GoogleFonts.lato(
                        fontSize: 28,
                        color: colorPrimary,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 5),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: TextField(
                        controller: username,
                        showCursor: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.alternate_email,
                            color: Color(0xFF666666),
                          ),
                          fillColor: Color(0xFFF2F3F5),
                          //hintStyle: GoogleFonts.lato(color: Color(0xff666666)),
                          hintText: "Email",
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: TextField(
                        showCursor: true,
                        controller: password,
                        //obscureText: !secure,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color(0xFF666666),
                          ),
                          suffixIcon: GestureDetector(
                            //onTap: hidePassword,
                            child: Icon(
                              Icons.remove_red_eye,
                              //color: secure ? colorPrimary : Color(0xFF777777),
                            ),
                          ),
                          fillColor: Color(0xFFF2F3F5),
                          //hintStyle: GoogleFonts.lato(color: Color(0xff666666)),
                          hintText: "Password",
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          //final result = await NewsServices.login("a", "a");
                          final result = await NewsServices.login(
                              username.text, password.text);
                          if (result is ApiReturnValue) {
                            //if (result.data)
                            //log("CEK INI = " + result.data.substring(0, 7));

                            if (result.data.substring(0, 7).toUpperCase() ==
                                "WELCOME") {
                              //TAMPILKAN SNACK BAR
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(result.data),
                                ),
                              );

                              //NAVIGATE TO NEW PAGE
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LandingPage()));
                            } else {
                              //TAMPILKAN SNACK BAR
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Login failed"),
                                ),
                              );
                            }
                          }
                        },
                        child: Text('LOGIN',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: colorPrimary, // background
                          onPrimary: Colors.yellow, // foreground
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          width: size.width,
          child: Container(
            width: size.width,
            decoration: BoxDecoration(color: Colors.grey[200]),
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't Have An Account?",
                  style: GoogleFonts.lato(fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Text("Register here",
                      style: GoogleFonts.lato(
                          fontSize: 15,
                          color: colorPrimary,
                          fontWeight: FontWeight.w700)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));

                    //print("value of your text");
                  },
                )
                //Text("Register here",
                //    style: GoogleFonts.lato(
                //        fontSize: 15,
                //        color: colorPrimary,
                //        fontWeight: FontWeight.w700))
              ],
            ),
          ),
        )

        //=InputLogin(
        //=  signin: signin,
        //=  size: size,
        //=  username: _email,
        //=  password: _password,
        //=  loading: loading,
        //=  hidePassword: () => setState(() {
        //=    hidePass = !hidePass;
        //=  }),
        //=  secure: hidePass,
        //=),
        //=RegisterHere(size: size),
      ],
    ));
  }
}
