import 'package:flutter/material.dart';

class CadProdCodigoScreen extends StatefulWidget {
  @override
  _CadProdCodigoScreenState createState() => new _CadProdCodigoScreenState();
}

class _CadProdCodigoScreenState extends State<CadProdCodigoScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('BUSCAR PRODUTOS'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _formKey,
              child: FormUI(),
            ),
          ),
        ),
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green[800],
        accentColor: Colors.cyan[600],
      ),
    );
  } // Here is our Form UI//

  Widget FormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: const InputDecoration(
              labelText: 'Nome do Produto',
          ),
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor o nome do produto, não pode ser nulo.';
            }
          },
        ),
        new TextFormField(
          decoration: const InputDecoration(
              labelText: 'Código'
          ),
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor o código, não pode ser nulo.';
            }
            if (int.tryParse(value.toString()) == null) {
              return 'Por favor o código, somente número.';
            }
          },
        ),
        new SizedBox(
          height: 10.0,
        ),
        new ButtonTheme.bar(
          child: new ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new RaisedButton(
                onPressed: _goCadProdEquipamento,
                child: new Icon(Icons.add),
                color: Colors.black87,
                shape: StadiumBorder(
                    side: BorderSide(
                        //style: BorderStyle.solid,
                        width: 4.0
                    )
                ),
              ),
              new SizedBox(
                width: 200.0,
                height: 50.0,
                child: new RaisedButton(
                  onPressed: _validateInputs,
                  child: new Text('BUSCAR'),
                  color: Colors.lightBlue[800],
                  textColor: Theme.of(context).primaryColorDark,
                  elevation: 4.0,
                  splashColor: Colors.lightGreen,
                  shape: StadiumBorder(
                      side: BorderSide(
                          style: BorderStyle.solid,
                          width: 4.0
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Enviando Dados!')));
    }
  }

  void _goCadProdEquipamento(){
    Navigator.pushNamed(context, '/cad-prod-equipamento');
  }

}