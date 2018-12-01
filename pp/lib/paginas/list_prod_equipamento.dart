import 'package:flutter/material.dart';

class ListProdEquipamentoScreen extends StatefulWidget {
  @override
  _ListProdEquipamentoScreenState createState() => new _ListProdEquipamentoScreenState();
}

class _ListProdEquipamentoScreenState extends State<ListProdEquipamentoScreen> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('LISTAR - PRODUTOS'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
      ),
      theme: new ThemeData(
        //primarySwatch: Colors.blue,
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
    );
  }
}