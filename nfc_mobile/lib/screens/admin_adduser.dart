import 'package:flutter/material.dart';
import 'package:nfc_mobile/shared/app_bar.dart';
import 'package:nfc_mobile/shared/constants.dart';
import 'package:nfc_mobile/shared/drawer.dart';
import 'package:nfc_mobile/services/auth.dart';

class AdminAddUser extends StatefulWidget{
  @override
  _AdminAddUserState createState() => _AdminAddUserState();
}

class _AdminAddUserState extends State<AdminAddUser> {
  
  final AuthService _auth = AuthService();

  // text field state
  String firstName = '';
  String lastName = '';
  String email = '';
  String compName = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Strikeplate',),
      drawer: MakeDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: backgroundGradient,
        ),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Add/Update User', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('First Name:',
                            style: TextStyle(
                              color: Colors.white
                            ),),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 200, maxHeight: 30),
                                child: TextFormField(
                                  decoration: textInputDecoration,
                                  onChanged: (val) {
                                    setState(() => firstName = val);
                                  },
                                ),
                              ),
                            ),
                            Text('email:',
                            style: TextStyle(
                              color: Colors.white
                            ),),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 200, maxHeight: 30),
                                child: TextFormField(
                                  decoration: textInputDecoration,
                                  onChanged: (val) {
                                    setState(() => email = val);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Last Name: ',
                            style: TextStyle(
                              color: Colors.white
                            ),),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 200, maxHeight: 30),
                                child: TextFormField(
                                decoration: textInputDecoration,
                                onChanged: (val) {
                                    setState(() => lastName = val);
                                  },
                                ),
                              ),
                            ),
                            Text('Company: ',
                            style: TextStyle(
                              color: Colors.white
                            ),),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 200, maxHeight: 30),
                                child: TextFormField(
                                decoration: textInputDecoration,
                                onChanged: (val) {
                                    setState(() => compName = val);
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),    
                    ],
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 570),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Add Rooms', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 30),
                          child: TextFormField(
                            decoration: textInputDecoration,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: RaisedButton(
                              child: Text('Add/Update User',
                              style: TextStyle(
                                color: Colors.black
                              ),),
                              onPressed: () async { 
                                // print(firstName);
                                // print(lastName);                              
                                // print(email);
                                // print(compName); 
                              },
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),  
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 375, minWidth: 400),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[500]
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start, // displaying in centre. Why?
                              children: <Widget>[
                                Text('User Information',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                                  ),
                                ), 
                              ],
                            ),
                            Divider(  //not showing up. Why?
                              height: 20,
                              color: Colors.black,
                              thickness: 4,
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('User ID: ',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('First Name: ',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('Last Name: ',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('Email: ',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('Title: ',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start, // displaying in centre. Why?
                                children: <Widget>[
                                  Text('Accessible Rooms:',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12
                                  ),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 120, maxWidth: 350),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey[400]
                                      )
                                    ),
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

