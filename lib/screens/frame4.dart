
import 'package:flutter/material.dart';
import 'package:mateen/screens/rejectPage.dart';
import 'package:mateen/screens/scannedHistory.dart';
import 'package:mateen/widgets/scannedItemInfo.dart';

import 'deliveryPage.dart';

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
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RejectPage()));
                        },
                        child: Text(
                          'REJECT',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1.2,
                            color: Color.fromARGB(255,86, 0, 232),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          showDialog(
                            barrierDismissible: true,
                            context: context, 
                            builder: (context){
                              return AlertDialog(
                                title: Text('Reschedule Order'),
                                content: Column(
                                  children:[
                                    Text('NEW Delivery date: 19/05/2021'),
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Reason',
                                        border:OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            const Radius.circular(5.0)
                                          ),
                                          borderSide: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(255,86, 0, 232),
                                          )
                                        ),
                                        hintText: 'Input text',
                                      ),
                                    ),
                                  ]
                                ),
                                actions: [
                                  TextButton(
                                    child: Text(
                                      'CONFIRM',
                                      style: TextStyle(
                                        color: Color.fromARGB(255,86, 0, 232),
                                      ),
                                    ),
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                  ),
                                  TextButton(
                                    child: Text(
                                      'CANCEL',
                                      style: TextStyle(
                                        color: Color.fromARGB(255,86, 0, 232),
                                      ),
                                    ),
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                  )
                                ],
                              );
                            }
                          );
                        },
                        child: Text(
                          'RESCHEDULE',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1.2,
                            color: Color.fromARGB(255,86, 0, 232),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DeliveryPage()));
                        },
                        child: Text(
                          'DELIVER',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1.2,
                            color: Color.fromARGB(255,86, 0, 232),
                            fontWeight: FontWeight.bold
                          ),
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScannedHistory()));
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