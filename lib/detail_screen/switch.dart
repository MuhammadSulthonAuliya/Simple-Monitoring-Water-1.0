import 'package:flutter/material.dart';

//Buat CLass On OF karena menggunakan statefull widget sehingga perlu membuat state

class switchiot extends StatefulWidget {
  bool switches = false;
  switchiot({required this.switches});

  @override
  _switchiotState createState() => _switchiotState(switches: this.switches);
}

class _switchiotState extends State<switchiot> {
  bool switches = false;
  _switchiotState({required this.switches});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: switches,
      onChanged: (bool value) {
        setState(() {
          switches = value;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(switches ? 'Pump On' : 'Pump Off'),
          duration: Duration(seconds: 1),
        ));
      },
    );
  }
}
