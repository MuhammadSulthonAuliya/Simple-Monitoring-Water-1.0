import 'package:flutter/material.dart';
import 'package:monitorair/defaultAssets.dart';
import 'package:monitorair/detail_screen/switch.dart';
import 'package:monitorair/riverDatabase.dart';

class DetailInformWeb extends StatelessWidget {
  final int index;
  final double pmargin;
  DefaultAsset df = DefaultAsset();
  DetailInformWeb({required this.index, required this.pmargin});
  @override
  Widget build(BuildContext context) {
    final RiverSpesification river = riverList[index];
    print(river.nama);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: pmargin / 2),
      decoration: df.defaultBackground,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: pmargin, vertical: 40),
        child: ListView(
          children: [
            Center(
              child: Text(
                '${river.nama}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 53, 71, 87),
                  shadows: [
                    BoxShadow(
                      color: Color.fromARGB(108, 0, 0, 0),
                      offset: Offset(1, 2),
                      blurRadius: 1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 100 - river.kedalaman,
                      width: pmargin * 1.5,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: river.kedalaman,
                      width: 90,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 62, 176, 242),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 103,
                  width: 93,
                  child: Container(
                    child: Center(
                      child: Text(
                        '${river.kedalaman} %',
                        style: TextStyle(
                          color: Color.fromARGB(175, 110, 96, 239),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(175, 110, 96, 239), width: 3),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: Card(
                color: Color.fromARGB(175, 110, 96, 239),
                margin: EdgeInsets.symmetric(
                    horizontal: pmargin / 1.5, vertical: 5),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.water_drop_outlined,
                        color: Color.fromARGB(255, 96, 226, 255),
                      ),
                      Text(
                        '  Kedalaman Air : ${river.kedalaman} %',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Card(
                color: Color.fromARGB(175, 110, 96, 239),
                margin: EdgeInsets.symmetric(
                    horizontal: pmargin / 1.5, vertical: 5),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.hot_tub_rounded,
                        color: Color.fromARGB(255, 255, 127, 127),
                      ),
                      Text(
                        '  Suhu Air : ${river.suhu} C',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Card(
                color: Color.fromARGB(175, 110, 96, 239),
                margin: EdgeInsets.symmetric(
                    horizontal: pmargin / 1.5, vertical: 5),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.api,
                        color: Color.fromARGB(255, 236, 252, 91),
                      ),
                      Text(
                        '  TDS : ${river.tds}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Card(
                color: Color.fromARGB(175, 110, 96, 239),
                margin: EdgeInsets.symmetric(
                    horizontal: pmargin / 1.5, vertical: 5),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.h_plus_mobiledata,
                        color: Color.fromARGB(255, 129, 248, 176),
                      ),
                      Text(
                        '  pH : ${river.ph}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Card(
                color: Color.fromARGB(173, 95, 210, 195),
                margin: EdgeInsets.symmetric(
                    horizontal: pmargin / 1.5, vertical: 5),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_city,
                        color: Color.fromARGB(255, 193, 129, 248),
                      ),
                      Text(
                        '  Lokasi : ${river.lokasi}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            switchiot(
              switches: river.switches,
            ),
            Center(
              child: Text('On / Off'),
            ),
          ],
        ),
      ),
    );
  }
}
