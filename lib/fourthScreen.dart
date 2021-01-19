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
      home: FourthScreen(),
    );
  }
}
class FourthScreen extends StatelessWidget {
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
      body:Stack(
        children: [
          Column(
            children: [
              Container(
                width:360,
                height:50,
                color: Colors.white,
                child:Row(
                  children: [
                    Container(
                      child: Text("Transaction Is Successfully Completed",style:TextStyle(fontSize: 18, color: Colors.black87, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
              Container(
                child:Image.network("https://dl.dropbox.com/s/oyg3dvrutcc0pz7/tick.gif?dl=0",height:270,width:270,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}