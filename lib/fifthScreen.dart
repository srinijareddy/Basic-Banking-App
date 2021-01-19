import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Alert Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: FifthScreen(),
    );
  }
}
class FifthScreen extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();
  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Transaction Details'),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "TextField in Dialog"),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('SUBMIT'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction'),
      ),
      body: Center(
    child: Column(children: <Widget>[
    Container(
    margin: EdgeInsets.all(20),
    child: Table(
    defaultColumnWidth: FixedColumnWidth(100.0),
    border: TableBorder.all(
    color: Colors.black,
    style: BorderStyle.solid,
    width: 2),
    children: [
    TableRow( children: [
    Column(children:[Text('Name', style: TextStyle(fontSize: 20.0,color: Colors.black87, fontWeight: FontWeight.bold),)]),
    Column(children:[Text('E-Mail id', style: TextStyle(fontSize: 20.0,color: Colors.black87, fontWeight: FontWeight.bold),)]),
    Column(children:[Text('Current \n balance', style: TextStyle(fontSize: 20.0,color: Colors.black87, fontWeight: FontWeight.bold),)]),
    ]),
    TableRow( children: [
    Column(children:[Text('Srinija \n Reddy')]),
    Column(children:[Text('S123@gmail.com')]),
    Column(children:[Text('80,000')]),

    ]),
    TableRow( children: [
    Column(children:[Text('Jahnavi')]),
    Column(children:[Text('J33@gmail.com')]),
    Column(children:[Text('90,000')]),
    ]),
    TableRow( children: [
    Column(children:[Text('Prachurya')]),
    Column(children:[Text('p23@gmail.com')]),
    Column(children:[Text('35000')]),
    ]),
      TableRow( children: [
        Column(children:[Text('Uday')]),
        Column(children:[Text('Uday8@gmail.com')]),
        Column(children:[Text('50,0500')]),
      ]),
      TableRow( children: [
        Column(children:[Text('Mastan')]),
        Column(children:[Text('m28@gmail.com')]),
        Column(children:[Text('30,0500')]),
      ]),
      TableRow( children: [
        Column(children:[Text('Aravind')]),
        Column(children:[Text('a54@gmail.com')]),
        Column(children:[Text('50,0500')]),
      ]),
      TableRow( children: [
        Column(children:[Text('Aniruth')]),
        Column(children:[Text('aniruth@gmail.com')]),
        Column(children:[Text('80,0500')]),
      ]),
      TableRow( children: [
        Column(children:[Text('Supriya')]),
        Column(children:[Text('sup23@gmail.com')]),
        Column(children:[Text('50,0500')]),
      ]),
      TableRow( children: [
        Column(children:[Text('Sankeethana')]),
        Column(children:[Text('san7@gmail.com')]),
        Column(children:[Text('60,0500')]),
      ]),
      TableRow( children: [
        Column(children:[Text('Virat')]),
        Column(children:[Text('virat8@gmail.com')]),
        Column(children:[Text('60,0500')]),
      ]),
    ],
    ),
    ),
    ])
    )
    );
  }
}