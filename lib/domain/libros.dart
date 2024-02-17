import 'dart:convert';



List<Libros> LibrosFromJson(String str) =>
    List<Libros>.from(json.decode(str).map((x) => Libros.fromJson(x)));

class Libros {
  int id;
  int year;
  String title;
  String handle;
  String publisher;
  String isbn;
  int pages;
  List<String> notes;
  List<Villain> villains;

  Libros({
    required this.id,
    required this.year,
    required this.title,
    required this.handle,
    required this.publisher,
    required this.isbn,
    required this.pages,
    required this.notes,
    required this.villains,
  });

  factory Libros.fromJson(Map<String, dynamic> json) => Libros(
        id: json["id"],
        year: json["Year"],
        title: json["Title"],
        handle: json["handle"],
        publisher: json["Publisher"],
        isbn: json["ISBN"],
        pages: json["Pages"],
        notes: List<String>.from(json["Notes"].map((x) => x)),
        villains: List<Villain>.from(
            json["villains"].map((x) => Villain.fromJson(x))),
      );
}

class Villain {
  String name;
  String url;

  Villain({
    required this.name,
    required this.url,
  });

  factory Villain.fromJson(Map<String, dynamic> json) => Villain(
        name: json["name"],
        url: json["url"],
      );
}


