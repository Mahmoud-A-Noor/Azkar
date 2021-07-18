import 'dart:math';
import 'package:azkar_arabic/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlDo3aaAlNabawyScreen extends StatelessWidget {

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
                return InkWell(

                  child: Stack(
                    children: [
                    Card(
                        color: Colors.white.withOpacity(0.8),
                        margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                        elevation: 30,
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('${ad3yat_al_nabi[index]['do3aa']}',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 25),softWrap: true,textDirection: TextDirection.rtl,),
                        )),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                      Positioned(
                        bottom: 5,
                          left: 5,
                          child: IconButton(icon: Icon(Icons.info_outline),onPressed: (){
                        Get.defaultDialog(
                            title: "رواة الحـديـث",
                            titleStyle: TextStyle(fontFamily: 'Amiri',fontWeight: FontWeight.bold,fontSize: 30,color: Colors.green[700]),
                            content: Column(
                              children: [
                                Divider(color: Colors.black,thickness: 2,),
                                Text('${ad3yat_al_nabi[index]['rawy']}',style: TextStyle(fontFamily: 'Amiri',fontWeight: FontWeight.bold,fontSize: 23),softWrap: true,textDirection: TextDirection.rtl,)
                              ],
                            )
                        );
                      },color: Colors.blue[800],iconSize: 30,))
                    ]
                  ),
                );
              },
              separatorBuilder: (ctx,index){
                return SizedBox(height: 15,);
              },
              itemCount: ad3yat_al_nabi.length
          ),
    );
  }
}
