import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/my_colors.dart';
import '../Constants/my_text.dart';
import '../Widgets/app_bar_widget.dart';
import '../models/card_model.dart';
import '../models/category_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _styleType = TextStyle(
        color: myBlueColor, fontWeight: FontWeight.bold, fontSize: 30);

    return Scaffold(
      appBar: myAppBar(
          appBarLeading(), "X4T", _styleType, homeBgColor, notificationBing()),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: homeBgColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  lineSpace(10, 0),
                  Text(
                    "Ongoing Courses",
                    style: textStyle10,
                  ),
                  lineSpace(10, 0),
                  Text(
                    "Continnue where you left of",
                    style: textStyle9,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[],
                    ),
                  ),
                  SizedBox(
                    height: 155,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only( right: 6),
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10),

                          width: 290,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Color(cards[index].cardBackground),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 43,
                                top: 0,
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 100,
                                  height: 200,
                                  // color: Colors.red,
                                  child: Image.asset(
                                    "assets/card_image.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 29,
                                top: 25,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: myWhiteColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),

                                      // color: Colors.red,
                                      child: Image.asset(
                                        cards[index].cardIcon,
                                        scale: 2.5,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            cards[index].title,
                                            style: cardTitle,
                                          ),
                                          Text(
                                            cards[index].subTitle,
                                            style: textStyle9,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                left:80,
                                bottom: 10,
                                child: Row(

                                  children: [
                                    Text(
                                      cards[index].video,
                                      style: textStyle2,

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:5,right:5),
                                      child: Container(
                                        width:5,
                                        height: 5,

                                        decoration:  const BoxDecoration(



                                            shape: BoxShape.circle,
                                            color: myWhiteColor),
                                      ),
                                    ),
                                    Text(
                                      cards[index].file,
                                      style: textStyle2,

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:5,right:5),
                                      child: Container(
                                        width:5,
                                        height: 5,

                                        decoration:  const BoxDecoration(



                                            shape: BoxShape.circle,
                                            color: myWhiteColor),
                                      ),
                                    ),

                                    Text(
                                      cards[index].exercise,
                                      style: textStyle2,

                                    ),
                                  ],
                                ),
                              ),



                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  lineSpace(20, 0),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: textStyle10,
                        ),
                        Text(
                          "SEE ALL",
                          style: textStyle4),
                      ],
                    ),
                  ),
                  lineSpace(10, 0),



                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only( right: 6),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10),

                          width: 73,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: 80,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: myWhiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),

                                // color: Colors.red,
                                child: Column(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                                      child: Image.asset(
                                        data[index].cardIcon,
                                        scale: 3,
                                      ),
                                    ),
                                    Text( data[index].title,style: textStyle3,),
                                    Text( data[index].subTitle,style: textStyle3,),
                                  ],
                                ),
                              ),



                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  lineSpace(10, 0),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
