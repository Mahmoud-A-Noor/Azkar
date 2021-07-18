import 'dart:math';
import 'package:azkar_arabic/shared/constants.dart';
import 'package:flutter/material.dart';

class Do3aaForDeadScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/do3aaScreens.jpg'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
            ),
          ),
          child: ListView.separated(
              itemBuilder: (ctx,index){
                return Card(
                    color: Colors.white.withOpacity(0.8),
                    margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                    elevation: 30,
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(do3aa_for_theDead[index],style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 25),softWrap: true,textDirection: TextDirection.rtl,),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                );
              },
              separatorBuilder: (ctx,index){
                return SizedBox(height: 15,);
              },
              itemCount: do3aa_for_theDead.length
          ),
    );
  }
}
