
import 'package:flutter/material.dart';
import 'package:mateen/screens/frame4.dart';

class ScanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[
          Center(
            child: IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Frame4()));
              },
              icon: Icon(Icons.fullscreen_outlined),
              iconSize: 350,
            ),
          ),
          Positioned(
            top: 30, 
            left: 10,
            child: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              iconSize: 40,
              icon: Icon(Icons.clear),
              color: Colors.black,
            ),
          )
        ]
      )
    );
  }
}