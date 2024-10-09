class Tarea {
  String? titulo;
  String? descripcion;
  bool completa;

  Tarea({this.titulo, this.descripcion, this.completa = false});
  void marcarCompleta() {
    completa = true;
  }
  String estado() {
    return completa ? 'Completada' : 'Incompleta';
  }
  void mostrarTarea() {
    print('Título: ${titulo ?? 'Sin título'}');
    print('Descripción: ${descripcion ?? 'Sin descripción'}');
    print('Estado: ${estado()}');
  }
}

class ListaTareas {
  List<Tarea> tareas = [];

  void agregarTarea(Tarea tarea) {
    tareas.add(tarea);
    print('Tarea "${tarea.titulo ?? 'Sin título'}" agregada.');
  }
  void eliminarTarea(int indice) {
    if (indice >= 0 && indice < tareas.length) {
      print('Tarea "${tareas[indice].titulo ?? 'Sin título'}" eliminada.');
      tareas.removeAt(indice);
    } else {
      print('Índice no válido.');
    }
  }
  void marcarTareaCompleta(int indice) {
    if (indice >= 0 && indice < tareas.length) {
      tareas[indice].marcarCompleta();
      print('Tarea "${tareas[indice].titulo ?? 'Sin título'}" marcada como completada.');
    } else {
      print('Índice no válido.');
    }
  }
  void mostrarTareas() {
    if (tareas.isEmpty) {
      print('No hay tareas en la lista.');
    } else {
      for (int i = 0; i < tareas.length; i++) {
        print('Tarea $i:');
        tareas[i].mostrarTarea();
        print('---');
      }
    }
  }
}

void main() {
  ListaTareas listaTareas = ListaTareas();

  // Crear algunas tareas
  Tarea tarea1 = Tarea(titulo: 'Comprar pan', descripcion: 'Ir a la pulperia y comprar pan.');
  Tarea tarea2 = Tarea(titulo: 'practicar futbol');
  Tarea tarea3 = Tarea(); // Tarea sin título ni descripción

  listaTareas.agregarTarea(tarea1);
  listaTareas.agregarTarea(tarea2);
  listaTareas.agregarTarea(tarea3);


  listaTareas.mostrarTareas();
  listaTareas.marcarTareaCompleta(0);
  listaTareas.eliminarTarea(1);
  listaTareas.mostrarTareas();