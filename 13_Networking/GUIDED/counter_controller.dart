import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{
  var counter = 0.obs;
  
  void increment(){
    counter++;
    
  }

  void decrement(){
    counter--;
  }
  
  void getsnackbar(){
    Get.snackbar(
     "Getx Snackbar",
     "Ini Snackbar", 
     colorText: Colors.white, 
     backgroundColor: Colors.red
    );
  }

  void getdialog(){
    Get.defaultDialog(
      title: "Getx Dialog",
      middleText: "Ini Dialog",
      backgroundColor: Colors.red
    );
  }

  void getbottomsheet(){
    Get.bottomSheet(
      Container(
        height: 200,
        color: Colors.red,
        child: Center(
          child: Text("Getx BottomSheet"),
        ),
      )
    );
  }
}
