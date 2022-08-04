import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/my_colors.dart';
import '../Constants/my_text.dart';

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
Widget button(String text){
  return  Container(
    height: 55,
    width: 230,
    decoration:  BoxDecoration(
      color: myBlueColor,

      borderRadius: BorderRadius.all(
        Radius.circular(40.0),
      ),
        boxShadow: [
          BoxShadow(
            color: myBlueColor.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ]

    ),

    child: Center(
      child: GestureDetector(
        onTap: () {},
        child:  Text(
          text,
          textAlign: TextAlign.left,
          style: buttonText,
        ),
      ),
    ),
  );
}
Widget textFormField(String title,String hintText){
  return  Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
        lineSpace(10, 0),
        TextFormField(
          // controller: ,
          style: const TextStyle(color: Colors.black),
          decoration:  InputDecoration(
              contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              hintText:hintText,
              border: const OutlineInputBorder(),
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: .5))),

          validator: (value) {

            if (value!.isEmpty) {
              return '';
            }
            return null;
          },
        ),
      ],
    ),
  );
}

Widget appLeading(){
  return Container(
    width: 65,
    height: 65,


   child:Icon(
     Icons.arrow_back_ios_new,
     color: myBlackColor,
   ),   );

}
Widget socialIcon(String image){
  return Container(

    decoration: const BoxDecoration(
        shape: BoxShape.circle, color: myWhiteColor),
    child: Image.asset(
      image ,
      scale: 2.5,
    ),
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
