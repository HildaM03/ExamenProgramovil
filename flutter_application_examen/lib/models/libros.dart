

import 'dart:convert';
List<libros> equiposFromJson(String str) => List<libros>.from(json.decode(str).map((x) => libros.fromJson(x)));


class libros{
   final String titulo;
  final String autor;
  final int paginas;


libros({
  required this.titulo,
  required this.autor,
  required this.paginas,
});

  static fromJson(e) {}
}
