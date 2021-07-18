import 'package:azkar_arabic/shared/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../shared/constants.dart';


class AzkarAlMasaaScreen extends StatefulWidget {
  @override
  _AzkarAlMasaaScreenState createState() => _AzkarAlMasaaScreenState();
}


class _AzkarAlMasaaScreenState extends State<AzkarAlMasaaScreen> {

  late List<Map<String,dynamic>> azkar;

  @override
  void initState() {
    azkar = azkar_almasaa;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return azkar.length<=0?buildAzkarFinished(): Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent[350],
        title: Text('أذكـار المسـاء',style: TextStyle(fontFamily: 'Tajwal',fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      body: Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade300,
              image: DecorationImage(
                image: AssetImage('assets/images/masaa.jpg'),
                fit: BoxFit.cover,
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
