import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/my_colors.dart';

PreferredSizeWidget myAppBar(Widget leading,String title,TextStyle style,Color color,Widget icon){
  return AppBar(
    elevation: 0,
    backgroundColor:color ,
    //background color of Appbar to green
    leading: IconButton(
      icon: leading,
      onPressed: (){
        //action for search icon button
      },
    ),
    title: Text(title,style:style ,),
    centerTitle: true,
    actions: <Widget>[

      IconButton(
        icon: icon,
        onPressed: (){
          //action for search icon button
        },
      ),


    ],
  );

}

Widget notificationBing(){
  return Container(
    width: 65,
    height: 65,

    decoration:  BoxDecoration(
        image: DecorationImage(
            image:  AssetImage("assets/notification-bing.png"),
            scale: 5
        ),
        border: Border.all(color:myGrayColor),

        shape: BoxShape.circle,
        color: homeBgColor),
  );

}
Widget appBarLeading(){
  return Container(
    width: 65,
    height: 65,

    decoration:  BoxDecoration(
        image: DecorationImage(
            image:  AssetImage("assets/menu.png"),
            scale: 3
        ),
        border: Border.all(color:myGrayColor),

        shape: BoxShape.circle,
        color: homeBgColor),
  );

}
Widget lineSpace(double height,double width,){
  return SizedBox(
    height: height,
    width: width,
  );

}
