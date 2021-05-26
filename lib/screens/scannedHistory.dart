import 'package:flutter/material.dart';
import 'package:mateen/screens/scanPage.dart';
import 'package:mateen/widgets/scannedItem.dart';


class ScannedHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ScannedItem(),
            ScannedItem(),
          ]
        )
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanPage()));
        },
        backgroundColor: Color.fromARGB(255,13, 219, 199),
        child: Icon(Icons.qr_code),
      ),

      bottomNavigationBar: Container(
        color: Color.fromARGB(255,86, 0, 232),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            IconButton(
              iconSize: 24.0,
              icon: Icon(Icons.cached),
              color: Colors.white,
              onPressed: (){Navigator.pop(context);},
            ),
            IconButton(
              iconSize: 24.0,
              icon: Icon(Icons.logout),
              color: Colors.white,
              onPressed: (){},
            )
        ]
      ),
      )
    );
  }
}