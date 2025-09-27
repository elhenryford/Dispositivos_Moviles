import 'package:flutter/material.dart';

class VerListaDeReservasDeUnaHabitacion extends StatelessWidget {
  const VerListaDeReservasDeUnaHabitacion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;

    return Center(
      child: Container(
        width: w,
        height: h,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFF0088FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Stack(
          children: [
            // Caja azul grande
            Positioned(
              left: w * 0.05,
              top: h * 0.45,
              child: Container(
                width: w * 0.9,
                height: h * 0.35,
                decoration: ShapeDecoration(
                  color: const Color(0xFF0067C2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            // Header azul
            Positioned(
              left: w * 0.02,
              top: h * 0.01,
              child: Container(
                width: w * 0.95,
                height: h * 0.15,
                decoration: ShapeDecoration(
                  color: const Color(0xFF0067C2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            // Títulos
            Positioned(
              left: w * 0.08,
              top: h * 0.47,
              child: Text(
                'Costo',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: w * 0.05,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: w * 0.38,
              top: h * 0.47,
              child: Text(
                'checkin',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: w * 0.05,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: w * 0.67,
              top: h * 0.47,
              child: Text(
                'checkout',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: w * 0.05,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            // Caja negra
            Positioned(
              left: w * 0.08,
              top: h * 0.52,
              child: Container(
                width: w * 0.85,
                height: h * 0.25,
                color: const Color(0xFF070707),
              ),
            ),

            // Filas de datos
            Positioned(
              left: w * 0.1,
              top: h * 0.57,
              child: Text(
                '150   29/01/2022 10:30   01/01/2022 18:00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w * 0.04,
                ),
              ),
            ),
            Positioned(
              left: w * 0.1,
              top: h * 0.52,
              child: Text(
                '150   29/08/2025 23:30   01/09/2025 17:45',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w * 0.04,
                ),
              ),
            ),

            // Título principal
            Positioned(
              left: w * 0.05,
              top: h * 0.02,
              child: Text(
                'Reservas de la Habitacion',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: w * 0.08,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Caja gris
            Positioned(
              left: w * 0.18,
              top: h * 0.18,
              child: Container(
                width: w * 0.65,
                height: h * 0.25,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            // Texto "Número"
            Positioned(
              left: w * 0.18,
              top: h * 0.1,
              child: Text(
                'Numero',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: w * 0.08,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            // Caja negra número
            Positioned(
              left: w * 0.55,
              top: h * 0.1,
              child: Container(
                width: w * 0.2,
                height: h * 0.05,
                color: Colors.black,
              ),
            ),

            // Número
            Positioned(
              left: w * 0.6,
              top: h * 0.1,
              child: Text(
                '15',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w * 0.08,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

