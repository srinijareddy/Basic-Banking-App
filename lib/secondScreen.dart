
import 'package:basic_banking_systems/thirdScreen.dart';
import 'package:flutter/material.dart';

import 'fifthScreen.dart';
import 'fourthScreen.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:  ThemeData(
      primaryColor: const Color(0xFF02BB9F),
      primaryColorDark: const Color(0xFF167F67),
      accentColor: const Color(0xFF167F67),
    ),
    home:  SecondScreen(),
  ));
}
class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}
class SecondScreen extends StatefulWidget {
  State createState() =>  SecondScreenState();
}
class SecondScreenState extends State<SecondScreen> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('Srinija Reddy',Icon(Icons.perm_identity,color:  const Color(0xFF167F67),)),
    const Item('Jahnavi',Icon(Icons.perm_identity,color:  const Color(0xFF167F67),)),
    const Item('Prachurya',Icon(Icons.perm_identity,color:  const Color(0xFF167F67),)),
    const Item('Uday',Icon(Icons.perm_identity,color:  const Color(0xFF167F67),)),
    const Item('Mastan',Icon(Icons.perm_identity,color:  const Color(0xFF167F67),)),
    const Item('Aravind',Icon(Icons.perm_identity,color:  const Color(0xFF167F67),)),
    const Item('Anruth',Icon(Icons.perm_identity,color:  const Color(0xFF167F67),)),
    const Item('Supriya',Icon(Icons.perm_identity,color:  const Color(0xFF167F67),)),
    const Item('Sankeerthana',Icon(Icons.perm_identity,color:  const Color(0xFF167F67),)),
    const Item('Virat',Icon(Icons.perm_identity,color:  const Color(0xFF167F67),)),
  ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF167F67),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
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
                        child: Text(" Srinija Reddy",style:TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:30),
                        child:  DropdownButton<Item>(
                          hint:  Text("View All Customers"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return  DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(width: 10,),
                                  Text(
                                    user.name,
                                    style:  TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_rounded,size: 40,),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => ThirdScreen()
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:360,
                  height:50,
                  color: Colors.white,
                  child:Row(
                    children: [
                      Container(
                        child: Text(" Jahnavi",style:TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:30),
                        child:  DropdownButton<Item>(
                          hint:  Text("View All Customers"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return  DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(width: 10,),
                                  Text(
                                    user.name,
                                    style:  TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_rounded,size: 40,),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => ThirdScreen()
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:360,
                  height:50,
                  color: Colors.white,
                  child:Row(
                    children: [
                      Container(
                        child: Text(" Prachurya",style:TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:30),
                        child:  DropdownButton<Item>(
                          hint:  Text("View All Customers"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return  DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(width: 10,),
                                  Text(
                                    user.name,
                                    style:  TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_rounded,size: 40,),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => ThirdScreen()
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:360,
                  height:50,
                  color: Colors.white,
                  child:Row(
                    children: [
                      Container(
                        child: Text(" Uday",style:TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:30),
                        child:  DropdownButton<Item>(
                          hint:  Text("View All Customers"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return  DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(width: 10,),
                                  Text(
                                    user.name,
                                    style:  TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_rounded,size: 40,),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => ThirdScreen()
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:360,
                  height:50,
                  color: Colors.white,
                  child:Row(
                    children: [
                      Container(
                        child: Text(" Mastan",style:TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:30),
                        child:  DropdownButton<Item>(
                          hint:  Text("View All Customers"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return  DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(width: 10,),
                                  Text(
                                    user.name,
                                    style:  TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_rounded,size: 40,),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => ThirdScreen()
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:360,
                  height:40,
                  color: Colors.white,
                  child:Row(
                    children: [
                      Container(
                        child: Text(" Aravind",style:TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:30),
                        child:  DropdownButton<Item>(
                          hint:  Text("View All Customers"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return  DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(width: 10,),
                                  Text(
                                    user.name,
                                    style:  TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_rounded,size: 40,),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => ThirdScreen()
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:360,
                  height:40,
                  color: Colors.white,
                  child:Row(
                    children: [
                      Container(
                        child: Text(" Aniruth",style:TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:30),
                        child:  DropdownButton<Item>(
                          hint:  Text("View All Customers"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return  DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(width: 10,),
                                  Text(
                                    user.name,
                                    style:  TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_rounded,size: 40,),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => ThirdScreen()
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:360,
                  height:40,
                  color: Colors.white,
                  child:Row(
                    children: [
                      Container(
                        child: Text(" Supriya",style:TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:30),
                        child:  DropdownButton<Item>(
                          hint:  Text("View All Customers"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return  DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(width: 10,),
                                  Text(
                                    user.name,
                                    style:  TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_rounded,size: 40,),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => ThirdScreen()
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:360,
                  height:40,
                  color: Colors.white,
                  child:Row(
                    children: [
                      Container(
                        child: Text(" Sankeerthana",style:TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:10),
                        child:  DropdownButton<Item>(
                          hint:  Text("View All Customers"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return  DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(width: 10,),
                                  Text(
                                    user.name,
                                    style:  TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_rounded,size: 40,),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => ThirdScreen()
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:360,
                  height:40,
                  color: Colors.white,
                  child:Row(
                    children: [
                      Container(
                        child: Text(" Virat",style:TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:90),
                        child:  DropdownButton<Item>(
                          hint:  Text("View All Customers"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return  DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(width: 10,),
                                  Text(
                                    user.name,
                                    style:  TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_rounded,size: 40,),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => ThirdScreen()
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Transaction Details'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder:(context) => FifthScreen()
                        ));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
