import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xfortech/Constants/my_colors.dart';
import 'package:xfortech/Widgets/app_bar_widget.dart';

import '../Constants/my_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: myBlueColor,
          child: Column(
            children: [
              lineSpace(100, 0),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                  color: myWhiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      lineSpace(40, 0),
                      Text(
                        "Welcome Back!",
                        style: textStyle10,
                      ),
                      lineSpace(5, 0),
                      Text(
                        "Let's login for explore continues",
                        style: textStyle9,
                      ),
                      lineSpace(30, 0),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: myBlueColor),
                        child: Image.asset(
                          'assets/logo.png',
                          scale: 2.5,
                        ),
                      ),
                      lineSpace(30, 0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Email or Phone Number",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          lineSpace(10, 0),
                          TextFormField(
                            // controller: ,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                hintText: "johnchristianjc@gmail.com",
                                prefixIcon:
                                    Image.asset('assets/message.png', scale: 3),
                                suffixIcon: const Icon(
                                  Icons.check_circle,
                                  size: 20,
                                  color: myBlueColor,
                                ),
                                border: const OutlineInputBorder(),
                                errorBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red, width: .5))),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                          lineSpace(20, 0),
                          const Text(
                            "Password",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          lineSpace(10, 0),
                          TextFormField(
                            // controller: ,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                hintText: "Enter Password",
                                prefixIcon: Image.asset('assets/password.png',
                                    scale: 3),
                                suffixIcon:
                                    Image.asset('assets/eye.png', scale: 3),
                                border: const OutlineInputBorder(),
                                errorBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red, width: .5))),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                          lineSpace(10, 0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: <Widget>[
                                  lineSpace(0, 10),

                                  Checkbox(
                                    value: true,
                                    onChanged: (bool? value) {},
                                  ),
                                  const Text(
                                    'Remember Me',
                                    style: TextStyle(fontSize: 12.0),
                                  ), //Text
                                  lineSpace(0, 10), //SizedBox

                                  //Checkbox
                                ], //<Widget>[]
                              ),
                              const Text("Forgot password?")
                            ],
                          ),
                          Column(
                            children: [
                              lineSpace(10, 0),
                              button("LOGIN"),
                              lineSpace(20, 0),
                              Row(children: const <Widget>[
                                Expanded(
                                    child: Divider(
                                      thickness: 1,
                                      indent: 40,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Text("You can connect with"),
                                ),
                                Expanded(
                                    child: Divider(
                                      thickness: 1,
                                      endIndent: 40,
                                    )),
                              ]),
                              Row(
                                children: [
                                  socialIcon("assets/fb.png"),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: socialIcon("assets/google.png"),
                                  ),
                                  socialIcon("assets/apple.png"),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text("New User?"),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text("Signup"),
                                  ),
                                ],
                              )

                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
