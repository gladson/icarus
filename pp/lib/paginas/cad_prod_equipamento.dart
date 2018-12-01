import 'package:flutter/material.dart';

class CadProdEquipamentoScreen extends StatefulWidget {
  @override
  _CadProdEquipamentoScreenState createState() => new _CadProdEquipamentoScreenState();
}

class _CadProdEquipamentoScreenState extends State<CadProdEquipamentoScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('CAD - Equipamento'),
      ),
      body: new Center(
        child: new Text('AGORA SIM!'),
      ),
    );
  }
}