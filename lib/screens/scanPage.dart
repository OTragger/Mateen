import 'package:flutter/material.dart';

class ScanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[
          Container(),
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