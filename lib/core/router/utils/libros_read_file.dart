import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_application_examen1_programovil/domain/libros.dart';

class LibrosReadFile {
  //CRUD

  //READ
  Future<List<Libros>> getLibros() async {
    final _dataAssetBundle =
        await rootBundle.loadString('database/libros_data.json');
    List<dynamic> _librosListJson = jsonDecode(_dataAssetBundle)['data'];
    return _librosListJson.map((e) => Libros.fromJson(e)).toList();
  }
}