import 'package:fin_tech/views/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 20,top:90 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create Account",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "nb"
                    ),),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Input your details and let's get you started",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "nl"
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 166.85,
                        height: 55.94,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xffEEEEEE),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(0xffEEEEEE)),
                              ),
                              labelText: 'First Name',
                              hintText: 'Enter First Name',
                              labelStyle: TextStyle(
                                fontFamily: 'nl',
                                fontSize: 16,
                                color: Color(0xffC5C5C5),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 23.68,
                      ),
                      Container(
                        width: 166.85,
                        height: 55.94,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xffEEEEEE),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(9),
                                  borderSide: BorderSide(
                                    color: Color(0xffEEEEEE),
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(0xffEEEEEE)),
                              ),
                              labelText: 'Last Name',
                              hintText: 'Enter Last Name',
                              labelStyle: TextStyle(
                                fontFamily: 'nl',
                                fontSize: 16,
                                color: Color(0xffC5C5C5),
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 356,
                    height: 55.94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Color(0xffEEEEEE),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9),
                              borderSide: BorderSide(
                                color: Color(0xffEEEEEE),
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffEEEEEE)),
                          ),
                          labelText: 'Enter your phone number',
                          hintText: 'Enter username',
                          labelStyle: TextStyle(
                            fontFamily: 'nl',
                            fontSize: 16,
                            color: Color(0xffC5C5C5),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 356,
                    height: 55.94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Color(0xffEEEEEE),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9),
                              borderSide: BorderSide(
                                color: Color(0xffEEEEEE),
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffEEEEEE)),
                          ),
                          labelText: 'Enter your e-mail',
                          hintText: 'Enter username',
                          labelStyle: TextStyle(
                            fontFamily: 'nl',
                            fontSize: 16,
                            color: Color(0xffC5C5C5),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 356,
                    height: 55.94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Color(0xffEEEEEE),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9),
                              borderSide: BorderSide(
                                color: Color(0xffEEEEEE),
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffEEEEEE)),
                          ),
                          labelText: 'Create a password',
                          hintText: 'Enter username',
                          labelStyle: TextStyle(
                            fontFamily: 'nl',
                            fontSize: 16,
                            color: Color(0xffC5C5C5),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("By creating this account, you agree to our Privacy Notice and Terms & Conditions.",
                  style: TextStyle(
                    fontFamily: "nb",
                    fontSize: 14,
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                    color: Color(0xffFF9C09),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Navbar()),);
                      },
                      textColor: Colors.white,
                      elevation: 10,
                      height: 55.94,
                      minWidth: 356,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'medium',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Text("Already have an account? Sign In",
                    style: TextStyle(
                      fontFamily: "nb",
                      fontSize: 16,
                      color: Color(0xffCECBCB),
                    ),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
