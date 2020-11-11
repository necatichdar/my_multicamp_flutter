import 'package:flutter/material.dart';

void main() {
  runApp(MulticampApp());
}

class MulticampApp extends StatefulWidget {
  @override
  _MulticampAppState createState() => _MulticampAppState();
}

class _MulticampAppState extends State<MulticampApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multicamp App"),
      ),
      body: ListView.builder(itemBuilder: (_, int index) {
        return ListTile(
          title: Text("Music $index"),
        );
      }),
    );
  }
}
