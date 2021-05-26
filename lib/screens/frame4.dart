import 'package:flutter/material.dart';
import 'package:mateen/widgets/scannedItemInfo.dart';

class Frame4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Stack(
          children:[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ScannedItemInfo(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'REJECT',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1.2,
                          color: Color.fromARGB(255,86, 0, 232),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'RESCHEDULE',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1.2,
                          color: Color.fromARGB(255,86, 0, 232),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'DELIVER',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1.2,
                          color: Color.fromARGB(255,86, 0, 232),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ],
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
            ),
          ]
        ),
      )
    );
  }
}