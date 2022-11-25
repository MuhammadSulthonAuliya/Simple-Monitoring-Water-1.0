import 'package:flutter/material.dart';
import 'package:monitorair/defaultassets.dart';
import 'package:monitorair/detail_screen/detailScreenMobile.dart';
import 'package:monitorair/detail_screen/detailScreenWeb.dart';
import 'package:monitorair/detail_screen/switch.dart';
import 'package:monitorair/riverDatabase.dart';

// Halaman Detail Monitoring Sungai
// Terdapat 3 class: DetailInform, DetailInformWeb, DetailInformMobile

class DetailInform extends StatelessWidget {
  final int index;

  DetailInform({required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[
                Color.fromARGB(255, 75, 170, 248),
                Color.fromARGB(255, 243, 234, 246),
              ])),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return DetailInformMobile(index: index);
          } else if (constraints.maxWidth <= 800) {
            return DetailInformWeb(
              index: index,
              pmargin: 70,
            );
          } else if (constraints.maxWidth <= 1000) {
            return DetailInformWeb(
              index: index,
              pmargin: 100,
            );
          } else if (constraints.maxWidth <= 1200) {
            return DetailInformWeb(
              index: index,
              pmargin: 150,
            );
          } else if (constraints.maxWidth <= 1400) {
            return DetailInformWeb(
              index: index,
              pmargin: 200,
            );
          } else {
            return DetailInformWeb(
              index: index,
              pmargin: 250,
            );
          }
        },
      ),
    );
  }
}
