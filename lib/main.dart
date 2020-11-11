import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    builder: (context, child) => MultiCampApp(),
  ));
}

class MultiCampApp extends StatefulWidget {
  @override
  _MultiCampAppState createState() => _MultiCampAppState();
}

class _MultiCampAppState extends State<MultiCampApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Multicamp App"),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: Card(
                color: Colors.red,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Image.network(
                          "https://387b72ivq1z3mni0n261y7l1-wpengine.netdna-ssl.com/wp-content/uploads/2018/03/success-story-hamilton-app-innovation-min.png"),
                    ),
                    Text(
                      "Music Item $index",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "Music Item $index",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}

class listviewBuilder extends StatelessWidget {
  const listviewBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, int index) {
        return ListTile(
          title: Text("Music $index"),
          subtitle: Text("Subtitle $index"),
          leading: Text("Leading $index"),
          trailing: Text("Trailing $index"),
        );
      },
    );
  }
}
