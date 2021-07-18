import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';

Widget buildAzkarFinished(){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.orangeAccent,
      centerTitle: true,
      title: Text('أذكـار الصبـاح',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 30),),
    ),
    body: InkWell(
      onTap: (){
        Get.offAll(MyHomePage());
      },
      child: Container(
        //color: Colors.amberAccent,
        decoration: BoxDecoration(
            color: Colors.blue.shade300,
            image: DecorationImage(
              image: AssetImage('assets/images/sabah.jpg'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.check_circle_outline,size: 300,color: Colors.lightGreen,),
            SizedBox(height: 100,),
            ElevatedButton(
              onPressed: (){
                Get.offAll(MyHomePage());
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('الرئيسية',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 50,),),
                  Icon(Icons.keyboard_arrow_right_rounded,size: 70,)
                ],
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
              ),
            )
          ],
        ),
      ),
    ),
  );
}