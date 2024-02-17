import 'package:flutter/material.dart';
import 'package:flutter_application_examen1_programovil/domain/libros.dart';
import 'package:flutter_application_examen1_programovil/presentacion/pages/home_page/detalleslibros.dart';
import 'package:flutter_application_examen1_programovil/presentacion/pages/home_page/widgets/list_libros.dart';

class ListLibros extends StatelessWidget {
  final List<Libros> libros; // Parámetro para almacenar la lista de libros

  const ListLibros({Key? key, required this.libros}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: libros.length,
      itemBuilder: (context, index) {
        final libro = libros[index];
        return InkWell(
          onTap: () {
            // Navegar a la página de detalles del libro al hacer clic en él
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => paginadetalleslibro(libro: libro),
              ),
            );
          },
          child: Container(
            color: Colors.blue, // Color de fondo del elemento de la lista
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                libro.title,
                style: TextStyle(color: Colors.white), // Color del texto
              ),
            ),
          ),
        );
      },
    );
  }
}


