class Persona {
  String nombre;
  int edad;
  String? dni;

  Persona(this.nombre, this.edad, {this.dni});

  void saludar() {
    print("Hola, mi nombre es $nombre y tengo $edad años");
  }

  String? getDni() {
    return this.dni;
  }

  set _dni(String? _dni) {
    _dni = _dni;
  }
}
Persona crearPersona(String nombre, int edad, {String? dni}) {
  return Persona(nombre, edad, dni: dni);
}

void main() {
  var persona1 = crearPersona("Josue", 30, dni: "20212020130");

  persona1.saludar();

  persona1.dni = "1804200202728";

  print("Nuevo DNI de ${persona1.nombre} es ${persona1.dni}");
}  