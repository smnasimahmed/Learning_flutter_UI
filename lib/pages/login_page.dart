// ignore_for_file: prefer_const_constructors, use_build_context_synchronously
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utility/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();
                //**************************************************************************************************** */
                //************************************************* Button Function ********************************** */
                //**************************************************************************************************** */
  moveToHome(BuildContext context) async {
    // async used for "await"
    if(_formkey.currentState!.validate()){
      setState(() {
      changeButton = true;
    });
    await Future.delayed( Duration(seconds: 1)); //wait for 1 second then go to next line
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      //setState call Build for instant change
      changeButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          //"SingleChildScrollView" prevent space overflow
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.scaleDown,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                //**************************************************************************************************** */
                //**************************************************USER NAME & PASSWORD FORM ************************ */
                //**************************************************************************************************** */
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Username can't be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Password can't be empty";
                          }
                          if (value != null && value.length < 6) {
                            return "Password can't be less then 6 charecter.";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //**************************************************************************************************** */
                      //*****************************************************Login Button*********************************** */
                      //**************************************************************************************************** */

                      Material(
                        color: Colors.deepPurpleAccent,
                        borderRadius: changeButton
                            ? BorderRadius.circular(60)
                            : BorderRadius.circular(8),
                        child: InkWell(
                          //Used to make a container to button
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            width: changeButton ? 43 : 300,
                            height: 42,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(),
                            child: changeButton
                                ? Icon(
                                    Icons.done_outlined,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
