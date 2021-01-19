import 'package:basic_banking_systems/fourthScreen.dart';
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
      home: ThirdScreen(),
    );
  }
}
class ThirdScreen extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();
  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Transfer Money'),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "Enter The Amount to Transfer"),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Transfer'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder:(context) => FourthScreen()
                      ));
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
        title: Text('TextField AlertDialog Demo'),
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
                      margin: EdgeInsets.only(left:90),
                      child:FlatButton(
                        child: Text(
                          'Transfer Money',
                          style: TextStyle(fontSize: 15.0),),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)
                        ),
                        color: Colors.pinkAccent,
                        onPressed: () => _displayDialog(context),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child:Image.network("https://dl.dropbox.com/s/wu9l6plvlffd43t/mobile_payment.gif?dl=0",height:470,width:470,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}