import 'package:flutter/material.dart';



//for next page intent
void callNext(var className, var context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => className),
  );
}
//for back
void finish(context) {
  Navigator.pop(context);
}