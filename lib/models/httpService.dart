import 'package:http/http.dart';
import 'dart:convert';
import 'package:mateen/models/login.dart';
import 'package:mateen/models/shipments.dart' as shipments;

class HttpLoginService {
  Future<LoginResponse> getAuthCode(LoginRequest request) async {


    final String logUrl = "https://www.codiraq.com/ShipmentsAPI/login.php";

    //posting
    Response response = await post(
      Uri.parse(logUrl),
      body: request.toJson()
    );

    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Fail to load data');
    }
  }
}

class HttpFetchShipmentService {
  final String logUrl =
      "https://www.codiraq.com/ShipmentsAPI/DriversShipments.php?driverCode=Ehmtx123";

  Future<List<shipments.Data>> getShipments() async {
    List<shipments.Data> myShipments;

    try {
      Response response = await get(logUrl, headers: {
        // "Authorization": "${Secret.authCode}",
        "Authorization": "LrwiXi5D37RxHeoweCbafOtafBTUlB",
        "Accept": "application/json"
      });

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        myShipments = shipments.Shipments.fromJson(jsonData).data;
      }
    } catch (e) {
      print(e);
    }

    return myShipments;
  }
}
