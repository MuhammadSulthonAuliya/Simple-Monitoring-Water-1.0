import 'package:flutter/material.dart';
import 'package:monitorair/defaultassets.dart';
import 'package:monitorair/detail_screen/detailScreen.dart';
import 'package:monitorair/riverDatabase.dart';

// Spesifikasi Listtile Radio dari mainScreen dan tombol submit
DefaultAsset df = DefaultAsset();

class NodeList extends StatefulWidget {
  @override
  _NodeListState createState() => _NodeListState();
}

class _NodeListState extends State<NodeList> {
  RiverSpesification? rivers;
  String? riverRB;
  int indexs = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
            Color.fromARGB(220, 117, 211, 255),
            Color.fromARGB(255, 233, 215, 254),
          ])),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('Sungai A'),
              leading: Radio<String>(
                groupValue: riverRB,
                value: 'A',
                onChanged: (String? value) {
                  setState(() {
                    riverRB = value;
                    indexs = 0;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Sungai B'),
              leading: Radio<String>(
                groupValue: riverRB,
                value: 'B',
                onChanged: (String? value) {
                  setState(() {
                    riverRB = value;
                    indexs = 1;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Sungai C'),
              leading: Radio<String>(
                groupValue: riverRB,
                value: 'C',
                onChanged: (String? value) {
                  setState(() {
                    riverRB = value;
                    indexs = 2;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Sungai D'),
              leading: Radio<String>(
                groupValue: riverRB,
                value: 'D',
                onChanged: (String? value) {
                  setState(() {
                    riverRB = value;
                    indexs = 3;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Sungai E'),
              leading: Radio<String>(
                groupValue: riverRB,
                value: 'E',
                onChanged: (String? value) {
                  setState(() {
                    riverRB = value;
                    indexs = 4;
                  });
                },
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (riverRB == null) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text('Mohon memilih sungai !'),
                            );
                          });
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailInform(
                          index: indexs,
                        );
                      }));
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text(
                      'Submit',
                      style: df.defaultText,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
