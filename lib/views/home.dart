import 'package:flutter/material.dart';

import '../controller/home_data.dart';
import '../widgets/notification_icon.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var opid  =0;

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,

      children: [

         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row (
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Мои коды",
               style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.w700,
                 color: Color(0xff211F1F)
               ),),

               NotificationIcon(),

             ],
           ),
         ),

        SizedBox(height: 30,),

        Container(

          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,

            shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (ctx,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 10,top: 8.0,bottom: 8.0,right: 8.0),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        opid = index;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          color:index == opid? Colors.black :Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border:Border(
                            top: BorderSide(color: Color(0xffEBEBEB)),
                            bottom:  BorderSide(color: Color(0xffEBEBEB)),
                            left:  BorderSide(color: Color(0xffEBEBEB)),
                            right:  BorderSide(color: Color(0xffEBEBEB)),

                          )
                        ),
                        child: Padding(
                        padding:const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                        child:Text("${options[index]}",
                          style: TextStyle(
                              fontSize: 16,
                            color: index == opid? Colors.white :Colors.black
                          ),))
                        ),
                  ),
                );
              }),
        ),

        Container(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
              itemCount: home_Data.length,
              itemBuilder: (ctx,index){

                return Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20,top: 14.0,bottom: 14.0),
                  child: Container(
                      height: 65,
                      width: double.infinity,
                      decoration:BoxDecoration(
                        color: home_Data[index]['color'],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Container(
                              decoration:BoxDecoration(
                                  color: home_Data[index]['iconColor'],
                                  borderRadius: BorderRadius.circular(15)
                              ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(home_Data[index]['icon'],size: 30,),
                            )
                          ),
                          SizedBox(width: 15,),
                          Text("${home_Data[index]['title']}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),),
                        ],
                      )),
                );
              }),
        )

      ],
    );

  }
}
