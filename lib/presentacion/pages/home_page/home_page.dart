import 'package:flutter/material.dart';
import 'package:flutter_application_examen1_programovil/domain/libros.dart';
import 'package:flutter_application_examen1_programovil/presentacion/pages/home_page/widgets/list_libros.dart';
import 'package:flutter_application_examen1_programovil/core/router/utils/libros_read_file.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Libros de Stephen King'),
      ),
      body: FutureBuilder<List<Libros>>(
        future: LibrosReadFile().getLibros(),
        builder: (BuildContext context, AsyncSnapshot<List<Libros>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error al cargar los libros: ${snapshot.error}'),
            );
          } else {
            // Si no hay errores y tenemos datos, muestra el nuevo widget ListLibros
            return Center(
              child: ListLibros(libros: snapshot.data!),
            );
          }
        },
      ),
    );
  }
}
