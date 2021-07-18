import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SebhaScreen extends StatefulWidget {
  @override
  _SebhaScreenState createState() => _SebhaScreenState();
}

Color backGroundColor = Colors.black54;
Color CircleAvatarColor = Colors.cyan;
List<int> count =[
  33,33,33
];
List<String> tasbihat = [
  'سبحـان الله',
  'الحـمـد لله',
  'الله أكبـر'
];

class _SebhaScreenState extends State<SebhaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text('السبحـة',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 25),softWrap: true,textDirection: TextDirection.rtl,),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade300,
          image: DecorationImage(
            image: AssetImage('assets/images/sebha.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
          )
      ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: index==tasbihat.length-1?EdgeInsets.only(left: 40,right: 50,top: 50,bottom: 50):EdgeInsets.only(left: 50,top: 50,bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //SizedBox(height: MediaQuery.of(context).size.height/15,),
                  SizedBox(height: MediaQuery.of(context).size.height/15,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        //color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                        //Ccolor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                        if(count[index]==1){
                          tasbihat.add(tasbihat[index]);
                          tasbihat.removeAt(index);
                          count[index]=33;
                        }
                          else
                        count[index] = count[index]-1;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: CircleAvatarColor,
                      maxRadius: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${count[index]}',style: TextStyle(color: Colors.black,fontSize: 48,fontWeight: FontWeight.bold),),
                          SizedBox(height: MediaQuery.of(context).size.height/15,),
                          Text(tasbihat[index],style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),softWrap: true,textDirection: TextDirection.rtl,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: tasbihat.length,
        ),
      ),
    );
  }
}
