import 'dart:convert';
import 'dart:math';

import 'package:azkar_arabic/shared/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../shared/constants.dart';


class AzkarAlSabahScreen extends StatefulWidget {
  @override
  _AzkarAlSabahScreenState createState() => _AzkarAlSabahScreenState();
}


class _AzkarAlSabahScreenState extends State<AzkarAlSabahScreen> {

  late List<Map<String,dynamic>> azkar;

  @override
  void initState() {
    azkar = azkar_alsabah;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return azkar.length<=0 ? buildAzkarFinished(): Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: Text('أذكـار الصبـاح',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade300,
          image: DecorationImage(
            image: AssetImage('assets/images/sabah.jpg'),
            fit: BoxFit.fill,
          )
        ),
          child: ListView.builder(
              itemBuilder: (ctx,index){
                return InkWell(
                  onTap: (){
                    setState(() {
                      azkar[index]['count']--;
                      print(azkar_alsabah[index]['count']);
                      if(azkar[index]['count']<=0)
                        azkar.removeAt(index);
                    });
                  },
                  child: Card(
                    elevation: 30,
                    color: Colors.white54,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),

                    child: Column(
                      children: [
                        Container(
                          // decoration: BoxDecoration(
                          //     gradient: LinearGradient(
                          //         begin: Alignment.topRight,
                          //         end: Alignment.bottomLeft,
                          //         colors: [
                          //           Colors.primaries[Random().nextInt(Colors.primaries.length)],
                          //           Colors.primaries[Random().nextInt(Colors.primaries.length)],
                          //           Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          //         ]
                          //     )
                          // ),
                          width: double.infinity,
                          child: Card(
                            color: Colors.white54,
                            margin: EdgeInsets.all(5),
                            elevation: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(child: Text(azkar[index]['zekr'],style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 25),softWrap: true,textDirection: TextDirection.rtl,)),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                            ),
                          ),
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            azkar[index]['fadl']!='none' ? IconButton(icon: Icon(Icons.info_outline),onPressed: (){
                            Get.defaultDialog(
                                title: "فضـل الذكـر",
                                titleStyle: TextStyle(fontFamily: 'Amiri',fontWeight: FontWeight.bold,fontSize: 30,color: Colors.redAccent),
                                content: Column(
                                  children: [
                                    Divider(color: Colors.black,thickness: 2,),
                                    Text(azkar[index]['fadl'],style: TextStyle(fontFamily: 'Amiri',fontWeight: FontWeight.bold,fontSize: 23),softWrap: true,textDirection: TextDirection.rtl,)
                                  ],
                                )
                            );
                            },color: Colors.blue[800],iconSize: 30,) : SizedBox(width: 43,),
                            SizedBox(width: (MediaQuery.of(context).size.width/2)-65,),
                            Text('${azkar[index]['count']}',style: TextStyle(fontSize: 27),)
                          ],
                        ),
                      ],
                    ),
                  ) //SizedBox(width: 0,height: 0,)
                );
              },
              itemCount: azkar.length)
      ),
    );
  }
}
