import 'dart:convert' as convert;

import 'package:flutter/services.dart';
import 'package:flutter_application_examen/models/libros.dart';

//Estructura de la clase
class libros_read_file{
  //CRUD

  //READ
  Future<List<libros>> getlibros() async {
    final _dataAssetBundle = await rootBundle.loadString('database/data.json');
    List<dynamic>libroslistJson = convert.jsonDecode(_dataAssetBundle);
    return libroslistJson.map((e) => libroslistJson).toList();
  }


}

//Instancia de la clase
final libros_read_file = libros_read_file();