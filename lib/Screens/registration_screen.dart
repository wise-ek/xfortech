import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/my_colors.dart';
import '../Widgets/app_bar_widget.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);
  final _styleType = const TextStyle(color: myBlackColor, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(appLeading(), "Let's get stared", _styleType,
          myWhiteColor, const SizedBox()),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: myWhiteColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                lineSpace(30, 0),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: myGrayColor),
                    child: const Icon(
                      Icons.camera_alt_rounded,
                      size: 45,
                      color: myWhiteColor,
                    ),
                  ),
                ),
                lineSpace(30, 0),
                textFormField("Name", "Jhon"),
                lineSpace(20, 0),
                textFormField("Phone Number", "Enter Phone Number"),
                lineSpace(20, 0),
                textFormField("Email ID", "Enter Email ID"),
                lineSpace(20, 0),
                textFormField("Password", "Enter Password"),
                lineSpace(20, 0),
                textFormField("Confirm Password ", "Enter Password again"),
                lineSpace(20, 0),
                Row(
                  children: <Widget>[
                    lineSpace(0, 10),

                    Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                    ),
                    const Text(
                      'I agree with the Terms of Service & Privacy policy',
                      style: TextStyle(fontSize: 12.0),
                    ), //Text
                    lineSpace(0, 10), //SizedBox

                    //Checkbox
                  ], //<Widget>[]
                ),
                lineSpace(10, 0),
                button("REGISTER"),
                lineSpace(20, 0),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
