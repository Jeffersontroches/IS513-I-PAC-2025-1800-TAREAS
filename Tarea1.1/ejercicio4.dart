void main() {
  Biblioteca biblioteca = Biblioteca();

  biblioteca.agregarLibro(
      Libro("Cien años de soledad", "Gabriel García Márquez", 1967));
  biblioteca.agregarLibro(Libro("1984", "George Orwell", 1949));
  biblioteca
      .agregarLibro(Libro("El Principito", "Antoine de Saint-Exupéry", 1943));

  biblioteca.mostrarLibros();

  print("\nBuscando libros de 'George Orwell':");
  print(biblioteca.buscarPorAutor("George Orwell"));

  print("\nLibros ordenados por año de publicación:");
  print(biblioteca.listarOrdenadosPorAnio());

  biblioteca.eliminarLibro("1984");

  print("\nDespués de eliminar '1984':");
  biblioteca.mostrarLibros();
}

class Libro {
  String titulo;
  String autor;
  int anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion);

  String toString() {
    return '"$titulo" de $autor ($anioPublicacion)';
  }
}

class Biblioteca {
  List<Libro> _libros = [];

  void agregarLibro(Libro libro) {
    _libros.add(libro);
    print('Libro agregado: ${libro.titulo}');
  }

  void eliminarLibro(String titulo) {
    _libros.removeWhere((libro) => libro.titulo == titulo);
    print('Libro eliminado: $titulo');
  }

  List<Libro> buscarPorAutor(String autor) {
    return _libros
        .where((libro) => libro.autor.toLowerCase() == autor.toLowerCase())
        .toList();
  }

  List<Libro> listarOrdenadosPorAnio() {
    List<Libro> ordenados = List.from(_libros);
    ordenados.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return ordenados;
  }

  void mostrarLibros() {
    if (_libros.isEmpty) {
      print('La biblioteca está vacía.');
    } else {
      print('Libros en la biblioteca:');
      for (var libro in _libros) {
        print(libro);
      }
    }
  }
}
