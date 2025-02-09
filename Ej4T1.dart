/*
Cree una clase Libro con las propiedades titulo, autor, y anioPublicacion. 
Crea una clase Biblioteca que contenga una lista de libros y funciones para:
a.Agregar libros.
b.Eliminar libros.
c.Buscar libros por autor.
d.Listar todos los libros ordenados por año de publicación.
*/
void main() {
  Biblioteca biblioteca = Biblioteca();

  Libro libro1 = Libro(
      titulo: "Cien años de soledad",
      autor: "Gabriel Garcia Marquez",
      anioPublicacion: 1967);

  Libro libro2 = Libro(
      titulo: "El Hobbit", autor: "J.R.R. Tolkien", anioPublicacion: 1937);

  Libro libro3 = Libro(
      titulo: "Los miserables", autor: "Victor Hugo", anioPublicacion: 1862);

  Libro libro4 =
      Libro(titulo: "Rayuela", autor: "Julio Cortazar", anioPublicacion: 1963);

  Libro libro5 = Libro(
      titulo: "El nombre de la rosa",
      autor: "Umberto Eco",
      anioPublicacion: 1980);

  Libro libro6 = Libro(
      titulo: "El amor en los tiempos de colera",
      autor: "Gabriel Garcia Marquez",
      anioPublicacion: 1985);

  //Ejecucion de metodos
  biblioteca.agregar_Libro(libro1);
  biblioteca.agregar_Libro(libro2);
  biblioteca.agregar_Libro(libro3);
  biblioteca.agregar_Libro(libro4);
  biblioteca.agregar_Libro(libro5);
  biblioteca.agregar_Libro(libro6);
  biblioteca.buscar_libro("Gabriel Garcia Marquez");
  biblioteca.libros_ordenados();
  biblioteca.eliminar_libro("Cien años de soledad");
  biblioteca.buscar_libro("Gabriel Garcia Marquez");
}

class Libro {
  final String titulo;
  final String autor;
  final int anioPublicacion;

  Libro({
    required this.titulo,
    required this.autor,
    required this.anioPublicacion,
  });
}

class Biblioteca {
  List<Libro> lista = [];

  void agregar_Libro(Libro libro) {
    this.lista.add(libro);
    print("'${libro.titulo}' agregado");
  }

  void eliminar_libro(String titulo) {
    this.lista.removeWhere((libro) => libro.titulo == titulo);
    print("'$titulo' eliminado");
  }

  void buscar_libro(String autor) {
    for (int i = 0; i < lista.length; i++) {
      if (lista[i].autor == autor) {
        print("-----------------------");
        print(lista[i].titulo);
        print(lista[i].anioPublicacion);
        print(lista[i].autor);
      }
    }
  }

  void libros_ordenados() {
    for (var i = 0; i < lista.length; i++) {
      for (int j = 1; j < lista.length; j++) {
        if (lista[j].anioPublicacion < lista[j - 1].anioPublicacion) {
          Libro temporal = lista[j];
          lista.removeAt(j);
          lista.insert(j - 1, temporal);
        }
      }
    }
    for (var libro in lista) {
      print("""
      --------------------------------
      titulo: ${libro.titulo} 
      anio de publicacion: ${libro.anioPublicacion} 
      autor: ${libro.autor}""");
    }
  }
}
