import 'package:flutter/material.dart';
//import 'package:flutter_application_1/vistas/Login.dart';
//import 'package:flutter_application_1/vistas/MisReservas.dart';
//import 'package:flutter_application_1/vistas/RealizarReservas.dart';
//import 'package:flutter_application_1/vistas/RegistrarUsuario.dart';
//import 'package:flutter_application_1/vistas/RolAdministrador.dart';
//import 'package:flutter_application_1/vistas/RolHuesped.dart';
import 'package:flutter_application_1/vistas/VerListaDeReservasDeUnaHabitacion.dart';
//import 'package:flutter_application_1/vistas/DatosReserva.dart';
//import 'package:flutter_application_1/vistas/ListarHabitaciones.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const Scaffold(
        body: VerListaDeReservasDeUnaHabitacion(),
      ),
    );
  }
}
