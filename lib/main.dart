import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Asmaul Husna"),
          centerTitle: true,
        ),
        body: TampilanUtama(),
      ),
    );
  }
}

class TampilanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: asmaArab.length,
      itemBuilder: (BuildContext context, int position) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 4.0,
            child: ListTile(
              onTap: () {},
              title: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  asmaArab[position],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(
                asmaArti[position],
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
