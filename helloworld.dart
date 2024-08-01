void main() {

  List<Map<String, dynamic>> productos = [
    {"nombre": "Producto 1", "precio": 100.0, "descuento": 10, "iva": 12},
    {"nombre": "Producto 2", "precio": 50.0, "descuento": 5, "iva": 10},
    {"nombre": "Producto 3", "precio": 200.0, "descuento": 15, "iva": 15},
  ];

  // Iterar sobre cada producto
  for (var producto in productos) {

    double precioBase = producto["precio"];
    int descuento = producto["descuento"];
    int iva = producto["iva"];


    double precioConDescuento = precioBase * (1 - descuento / 100);

    double precioFinal = precioConDescuento * (1 + iva / 100);

    print("${producto["nombre"]}: \$${precioFinal.toStringAsFixed(2)}");
  }
}
