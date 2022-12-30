import 'package:flutter/material.dart';
import 'package:test_tips/views/home.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int current = 1;

  @override
  Widget build(BuildContext context) {

    List pages = [
      Container(
        child: Center(child: Text("page1")),
      ),
     Home(),
      Container(
        child: Center(child: Text("page3")),
      ),
    ];
    return Scaffold(
      
      
      body: Column(
        children: [

          Expanded(
              flex:9,
              child: Container(
                child: pages[current],
              )),

          Expanded(
              child: Container(

                width: double.infinity,
               decoration: BoxDecoration(
                 color: Color(0xff211F1F),
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(20),
                   topRight: Radius.circular(20),
                 )
               ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    GestureDetector(
                        onTap: (){
                          setState(() {
                            current = 0;
                          });
                        },
                        child: Icon(Icons.settings,size: 40,color: Colors.white,)),

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          current = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffCDC1FF),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child:Padding(
                          padding: EdgeInsets.all(8.0),
                          child:  Row(
                            children: [
                              Icon(Icons.dashboard_outlined,size: 40,color: Colors.black,),
                              SizedBox(width: 10,),
                              Text("Мои коды",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        )
                      ),
                    ),

                    GestureDetector(
                        onTap: (){
                          setState(() {
                            current = 2;
                          });
                        },

                        child: Icon(Icons.person,size: 40,color: Colors.white,)),
                  ],
                ),
              ))
        ],
      )
    );
  }
}
