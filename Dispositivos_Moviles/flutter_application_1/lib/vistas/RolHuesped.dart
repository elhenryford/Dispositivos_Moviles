import 'package:flutter/material.dart';

class RolHuesped extends StatefulWidget {
  const RolHuesped({super.key});

  @override
  State<RolHuesped> createState() => _RolHuespedState();
}

class _RolHuespedState extends State<RolHuesped> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // pantalla dinámica
    final width = size.width;
    final height = size.height;

    return Center(
      child: Container(
        width: width * 0.95,
        height: height,
        decoration: BoxDecoration(
          color: const Color(0xFF0088FF),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: EdgeInsets.all(width * 0.05),
          child: Column(
            children: [
              // Header
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: height * 0.015),
                decoration: BoxDecoration(
                  color: const Color(0xFF0067C2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Rol Huésped",
                    style: TextStyle(
                      fontSize: width * 0.08,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),

              // Avatar
              Container(
                width: width * 0.45,
                height: width * 0.45,
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: height * 0.06),

              // Botones de acción
              _buildBoton(context, "REALIZAR RESERVA", height * 0.1),
              SizedBox(height: height * 0.04),
              _buildBoton(context, "MIS RESERVAS", height * 0.1),
              SizedBox(height: height * 0.04),
              _buildBoton(context, "LOGOUT", height * 0.07),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBoton(BuildContext context, String texto, double alto) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: alto,
      decoration: BoxDecoration(
        color: const Color(0xFF212121),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.white,
            fontSize: width * 0.045,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
