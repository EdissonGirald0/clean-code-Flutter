import 'dart:io'; // Importa la biblioteca para operaciones de entrada/salida

import 'package:flutter/foundation.dart'; // Importa la biblioteca para funcionalidades específicas de Flutter
import 'package:http/http.dart'; // Importa la biblioteca para realizar solicitudes HTTP

class InternetChecker {
  Future<bool> hasInternet() async {
    try {
      if (kIsWeb) {
        // Si la plataforma es web, utiliza la librería http para hacer una solicitud a Google
        final response = await get(
          Uri.parse('google.com'),
        );
        // Devuelve true si la respuesta es exitosa (código de estado 200)
        return response.statusCode == 200;
      } else {
        // Si no es web, utiliza la clase InternetAddress para buscar direcciones IP de 'google.com'
        final list = await InternetAddress.lookup('google.com');
        // Devuelve true si la lista de direcciones no está vacía y la primera dirección IP no está vacía
        return list.isNotEmpty && list.first.rawAddress.isNotEmpty;
      }
    } on SocketException catch (e) {
      // Captura y maneja excepciones de SocketException, por ejemplo, cuando no hay conexión a Internet
      print(e.runtimeType);
      return false;
    }
  }
}
