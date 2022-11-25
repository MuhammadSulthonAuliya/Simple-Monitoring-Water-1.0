import 'package:flutter/material.dart';
import 'package:monitorair/defaultassets.dart';
import 'package:monitorair/main_screen/nodeList.dart';
import 'package:monitorair/riverDatabase.dart';
import 'package:monitorair/detail_screen/detailScreen.dart';

// Halaman tampilan utama, memperlihatkan tampilan utama list sungai-sungai

class dashboard extends StatelessWidget {
  DefaultAsset df = DefaultAsset();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Maaf, fitur belum tersedia'),
                    );
                  });
            },
          ),
          title: Center(child: Text('IOT Water Monitoring')),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Maaf, fitur belum tersedia'),
                        );
                      });
                },
                icon: Icon(Icons.search_rounded))
          ],
          flexibleSpace: Container(
            decoration: df.defaultBackground,
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return NodeList();
            } else if (constraints.maxWidth <= 1200) {
              return NodeList();
            } else {
              return NodeList();
            }
          },
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text('Maaf, fitur belum tersedia'),
                          );
                        });
                  },
                  icon: Icon(Icons.add_card),
                ),
              ),
              Text('  Tambahkan Node'),
            ],
          ),
        ),
      ),
    );
  }
}
