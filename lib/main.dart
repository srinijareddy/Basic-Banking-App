import 'package:basic_banking_systems/secondScreen.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Social media login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Stack(
        children: [
          Column(
            children: [
              Container(
                child:Image.network("https://dl.dropbox.com/s/8gvloat8oaymq5b/hello.jpg?dl=0",height:170,width:170,),
              ),
              Container(
                margin:EdgeInsets.only(right:200),
                child: Image.network("https://dl.dropbox.com/s/s8nefje2x247n27/bank.gif?dl=0",height:200,width: 200,),
              ),
              Row(
                children: [
                  Container(
                    margin:EdgeInsets.only(bottom:20),
                    child:Image.network("https://dl.dropbox.com/s/75wi9cqb3nxlooy/Srinija.gif?dl=0",height:250,width:250,),
                  ),
                  Container(
                    height: 50,
                    width:103,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:BorderRadius.circular(60)
                    ),
                    child: Container(
                      child: Center(
                        child:Row(
                          children: [
                            Container(
                              child: Text(" Next",
                                  style: TextStyle(fontSize: 20)),
                            ),
                            Container(
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_rounded),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder:(context) => SecondScreen()
                                      ));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
