
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mateen/screens/frame4.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {

  Barcode barcode;

  final qrKey = GlobalKey(debugLabel: 'QR');

  QRViewController controller;

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override 
  void reassemble() async {
    super.reassemble();

    if(Platform.isAndroid){
      await controller.pauseCamera();
    }

    await controller.resumeCamera();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[
          // Center(
          //   child: IconButton(
          //     onPressed: (){
          //       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Frame4()));
          //     },
          //     icon: Icon(Icons.fullscreen_outlined),
          //     iconSize: 350,
          //   ),
          // ),
          mateenQRView(context),
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

  Widget mateenQRView(BuildContext context){
    return QRView(
      key: qrKey, 
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        cutOutSize: MediaQuery.of(context).size.width * 0.6,
        borderLength: 20,
        borderWidth: 30,
        borderRadius: 10,
        borderColor: Theme.of(context).accentColor,
      )
    );
  }

  void onQRViewCreated(QRViewController controller){
    setState(()=>this.controller = controller);

    controller.scannedDataStream.
      listen((barcode)=>setState(()=>this.barcode = barcode));

    if(barcode != null){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Frame4()));
    }


  }
}