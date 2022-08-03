import 'dart:ui';
import 'package:flutter/material.dart';


import 'my_colors.dart';

const fontRegular = 'Regular';
const fontMedium = 'Medium';
const fontSemibold = 'Semibold';
const fontBold = 'Bold';

const textSize20 = 20.0;
const textSize12 = 12.0;
const textSize25 = 25.0;


TextStyle textStyle3 = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 8,
    color: myGrayColor,
    );
TextStyle textStyle4 = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize:12,
    color: myBlueColor,
    );
TextStyle textStyle2 = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10,
    color: myWhiteColor,
    );
TextStyle textStyle9 = const TextStyle(
    fontFamily: fontBold,
    fontSize: textSize12,
    color: myGrayColor,
    );
TextStyle textStyle10 = const TextStyle(
    fontFamily: fontBold,
    fontSize: textSize20,
    color: myBlackColor,
    fontWeight: FontWeight.bold);
TextStyle cardTitle = const TextStyle(
    fontFamily: fontBold,
    fontSize: textSize25,
    color: myWhiteColor,
    fontWeight: FontWeight.bold);
