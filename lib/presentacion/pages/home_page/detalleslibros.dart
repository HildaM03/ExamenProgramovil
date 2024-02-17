import 'package:flutter/material.dart';
import 'package:flutter_application_examen1_programovil/domain/libros.dart';

class paginadetalleslibro extends StatelessWidget {
  final Libros libro;

  const paginadetalleslibro({Key? key, required this.libro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(libro.title),
      ),
      body: Container(
        color: Colors.transparent, 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Año: ${libro.year}'),
              Text('Editorial: ${libro.publisher}'),
              Text('ISBN: ${libro.isbn}'),
              Text('Páginas: ${libro.pages}'),
              SizedBox(height: 20),
              Text(
                'Villanos Asociados:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: libro.villains
                    .map((villain) => ListTile(
                          title: Text(villain.name),
                          subtitle: Text(villain.url),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
