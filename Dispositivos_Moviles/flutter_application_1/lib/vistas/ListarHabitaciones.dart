import 'package:flutter/material.dart';

class ListarHabitaciones extends StatelessWidget {
  const ListarHabitaciones({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    const int cantidadHabitaciones = 4;

    return SizedBox(
      width: size.width,
      height: size.height, // 🔹 ahora ocupa toda la pantalla
      child: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF0088FF), // celeste
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Encabezado
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF0067C2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Listar Habitaciones',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            // Lista de habitaciones
            Expanded(
              child: ListView.builder(
                itemCount: cantidadHabitaciones,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.2,
                          height: size.width * 0.2,
                          decoration: BoxDecoration(
                            color: const Color(0xFF02FF13),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Número: ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Costo: ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
