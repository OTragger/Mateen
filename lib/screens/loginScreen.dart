import 'package:flutter/material.dart';
import 'package:mateen/models/httpService.dart';
import 'package:mateen/predef/secret.dart';
import 'package:mateen/screens/scannedHistory.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mateen Driver'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255,86, 0, 232),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'User Name',
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(5.0)
                    ),
                    borderSide: BorderSide(
                      width: 2,
                      color: Color.fromARGB(255,86, 0, 232),
                    )
                  ),
                  suffixIcon:Icon(Icons.remove_red_eye),
                  hintText: 'John Doe',
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(5.0)
                    ),
                    borderSide: BorderSide(
                      width: 2,
                      color: Color.fromARGB(255,86, 0, 232),
                    )
                  ),
                  suffixIcon:Icon(Icons.remove_red_eye),
                  hintText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 25),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () async {
                var login = await HttpLoginService().getAuthCode();
                Secret.authCode = login.data.authCode;
                Secret.driverCode = login.data.driverCode;
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScannedHistory()));
              },
              color: Color.fromARGB(255,86, 0, 232),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),  
            )
          ],
        ),
      ),
    );
  }
}