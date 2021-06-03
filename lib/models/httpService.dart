import 'package:http/http.dart';
import 'dart:convert';
import 'package:mateen/models/login.dart';
import 'package:mateen/models/shipments.dart' as shipments;
import 'package:mateen/predef/secret.dart';


class HttpLoginService{

  final String logUrl = "https://www.codiraq.com/ShipmentsAPI/login.php";

  Future<Login> getAuthCode() async{

    Login mylogin;

    try{
      Response response = await get(logUrl,headers: {"Accept":"application/json"});

      if (response.statusCode == 200){

        var jsonData = jsonDecode(response.body);
        mylogin = Login.fromJson(jsonData);
      }
    }
    catch (e){
      print(e);
    }

    return mylogin;
  }
}

class HttpFetchShipmentService{

  final String logUrl = "https://www.codiraq.com/ShipmentsAPI/DriversShipments.php?driverCode=Ehmtx123";
  

  Future<List<shipments.Data>> getShipments() async{

    List<shipments.Data> myShipments;

    try{
      Response response = await get(logUrl, headers: {
        "Authorization":"${Secret.authCode}",
        "Accept":"application/json"
      });

      if (response.statusCode == 200){

        var jsonData = jsonDecode(response.body);
        myShipments = shipments.Shipments.fromJson(jsonData).data;
      }
    }
    catch (e){
      print(e);
    }

    return myShipments;
  }
}