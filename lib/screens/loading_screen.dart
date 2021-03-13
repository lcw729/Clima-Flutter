import 'package:flutter/material.dart';
import 'location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
   void getLocation() async {
     Location location = Location();
     await location.getCurrentLocation();
     print(location.latitude);
     print(location.longitude);
   }

  @override
  void initState() {
     getLocation();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
