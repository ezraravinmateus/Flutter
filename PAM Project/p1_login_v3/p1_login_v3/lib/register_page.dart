import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p1_login_v3/constanta.dart';
import '../../services/services.dart';
import '../../models/models.dart';
import 'package:p1_login_v3/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  int _counter = 0;

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
                    "E-COMMERCE: REGISTER HERE",
                    style: GoogleFonts.lato(
                        fontSize: 28,
                        color: colorSecondary,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 5),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: TextField(
                        //controller: username,
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
                            Icons.article_rounded,
                            color: Color(0xFF666666),
                          ),
                          fillColor: Color(0xFFF2F3F5),
                          //hintStyle: GoogleFonts.lato(color: Color(0xff666666)),
                          hintText: "Name",
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: TextField(
                        //controller: username,
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
                        //controller: password,
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
                    child: TextField(
                        showCursor: true,
                        //controller: password,
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
                          hintText: "Retype Password",
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final result = await NewsServices.login("a", "a");
                          if (result is ApiReturnValue) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(result.data),
                              ),
                            );
                          }
                        },
                        child: Text('REGISTER (belum diimplementasi)',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: colorSecondary, // background
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
                  "Already have An Account?",
                  //style: GoogleFonts.lato(fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Text("Login here",
                      style: GoogleFonts.lato(
                          fontSize: 15,
                          color: colorSecondary,
                          fontWeight: FontWeight.w700)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));

                    //print("value of your text");
                  },
                )
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
