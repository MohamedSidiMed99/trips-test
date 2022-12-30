import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Icon(Icons.notifications,size: 40,),
          Container(
            margin: EdgeInsets.only(left: 24,top: 5),
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50)
            ),
          )

        ]);
  }
}
