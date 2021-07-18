import 'package:azkar_arabic/views/azkar_masaa_screen.dart';
import 'package:azkar_arabic/views/azkar_sabah_screen.dart';
import 'package:azkar_arabic/views/do3aa.dart';
import 'package:azkar_arabic/views/sebha_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double width = 160;
  double height = 160;
  double fontsize = 25;
  double iconsize = 50;
  double radius = 50;

  //Colors.primaries[Random().nextInt(Colors.primaries.length)]


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('أذكـار المسلـم',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
          )
        ),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width,
                    height: height,
                    child: ElevatedButton(onPressed: (){
                      Get.to(Do3aa(),transition: Transition.fadeIn);
                    }, child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/dua-hands.png',height: 60,width: 60,),
                        Text('أدعية',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: fontsize),)
                      ],
                    ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(radius))
                          ),
                        ),
                          backgroundColor: MaterialStateProperty.all(Colors.green)
                      )
                    ),
                  ),
                  Container(
                    width: width,
                    height: height,
                    child: ElevatedButton(onPressed: (){
                      Get.to(AzkarAlSabahScreen(),transition: Transition.fadeIn);
                      //Navigator.push(context,MaterialPageRoute(builder: (ctx)=>AzkarAlSabahScreen()));
                    }, child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wb_sunny,size: iconsize,color: Colors.deepOrange,),
                        Text('أذكار الصبـاح',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: fontsize),)
                      ],
                    ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(radius))
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(Colors.orangeAccent)

                    )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width,
                    height: height,
                    child: ElevatedButton(onPressed: (){
                      Get.to(SebhaScreen(),transition: Transition.fadeIn);
                    }, child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/rosary.png',height: 60,width: 60,),
                        Text('تسبيـح',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: fontsize),)
                      ],
                    ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(radius))
                              ),
                            ),
                          backgroundColor: MaterialStateProperty.all(Colors.cyan)
                        )
                    ),
                  ),
                  Container(
                    width: width,
                    height: height,
                    child: ElevatedButton(onPressed: (){
                      Get.to(AzkarAlMasaaScreen(),transition: Transition.fadeIn);
                    }, child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.nightlight_round,size: iconsize,color: Colors.black45,),
                        Text('أذكار المسـاء',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: fontsize),)
                      ],
                    ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(radius))
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(Colors.blueAccent[350])
                    ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
