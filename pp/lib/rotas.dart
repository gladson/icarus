import 'package:flutter/material.dart';

import 'package:pp/main.dart';
import 'package:pp/paginas/cad_prod_codigo.dart';
import 'package:pp/paginas/cad_prod_equipamento.dart';
import 'package:pp/paginas/list_prod_equipamento.dart';
import 'package:pp/paginas/relatorio.dart';

final rotas = {
  '/' : (BuildContext context) => MyApp(),
  '/primeira': (BuildContext context), CadProdCodigoScreen(),
}

