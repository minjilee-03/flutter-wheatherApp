// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getLocation() async {
    // ignore: unused_local_variable
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
          },
          child: const Text(
            'Get my location',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}
