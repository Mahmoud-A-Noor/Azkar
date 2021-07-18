import 'package:azkar_arabic/views/gawam3_do3aa_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'do3aa_for_thedead_screen.dart';
import 'do3aa_nabawy_screen.dart';

List screens = [
  Gawam3AlDo3aaScreen(),
  AlDo3aaAlNabawyScreen(),
  Do3aaForDeadScreen()
];

class Do3aa extends StatefulWidget {
  @override
  _Do3aaState createState() => _Do3aaState();
}

int index=0;
class _Do3aaState extends State<Do3aa> with SingleTickerProviderStateMixin {

  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: screens.length);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, // number of tabs
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(135.0), // here the desired height
        child:AppBar(
        centerTitle: true,
        title: Text('أدعيـة',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 30),),
        backgroundColor: Colors.green[700],
        bottom: TabBar(
          indicatorColor: Colors.lightGreenAccent,
          indicatorWeight: 4,
          onTap: (i){
            setState(() {
              index=i;
            });
          },
          controller: _controller,
          tabs: [
            Container(
              height: 80,
              child: Tab(
                child: Text('جوامـع الدعـاء',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Amiri',fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white),),
              ),
            ),
            Container(
              height: 80,
              child: Tab(
                child: Text('الأدعيـة النبويـة',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Amiri',fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
              ),
            ),
            Container(
              height: 80,
              child: Tab(
                child: Text('الدعـاء للميـت',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Amiri',fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white)),
              ),
            )
          ],
        ),
      ),),
       body: TabBarView(
         controller: _controller,
         children: [
           screens[0],
           screens[1],
           screens[2],
         ]
       )
        )
    );
  }
}
