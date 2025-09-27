import 'package:flutter/material.dart';

class RolAdministrador extends StatelessWidget {
  const RolAdministrador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFF0088FF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // Header
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF0067C2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Rol Administrador",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Botones de opciones
                _botonOpcion("CREAR HABITACIÓN"),
                _botonOpcion("LISTAR HABITACIONES"),
                _botonOpcion("LISTA DE RESERVAS DE UNA HABITACIÓN"),

                const Spacer(),

                // Logout
                _botonOpcion("LOGOUT", color: Colors.redAccent),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Widget reutilizable para los botones
  Widget _botonOpcion(String texto, {Color color = const Color(0xFF212121)}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          texto,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
