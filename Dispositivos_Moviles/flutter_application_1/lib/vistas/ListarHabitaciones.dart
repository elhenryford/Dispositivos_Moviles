import 'package:flutter/material.dart';

class ListarHabitaciones extends StatefulWidget {
  const ListarHabitaciones({super.key});

  @override
  State<ListarHabitaciones> createState() => _ListarHabitacionesState();
}

class _ListarHabitacionesState extends State<ListarHabitaciones> {
  final List<String> imagenes = [
    'assets/images/foto1.jpg',
    'assets/images/foto2.jpg',
    'assets/images/foto3.jpg',
    'assets/images/foto4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const int cantidadHabitaciones = 8;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: cantidadHabitaciones,
          itemBuilder: (context, index) {
            final imagen = imagenes[index % imagenes.length];
            final numeroHabitacion = index + 1;
            final costoHabitacion = (index + 1) * 1000;

            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  // 🔹 Imagen clickeable
                  GestureDetector(
                    onTap: () {
                      // 🔹 Abrir diálogo con la imagen grande
                      showDialog(
                        context: context,
                        builder: (_) => Dialog(
                          backgroundColor: Colors.transparent,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context); // cerrar al tocar
                            },
                            child: InteractiveViewer(
                              child: Image.asset(
                                imagen,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imagen,
                        width: size.width * 0.2,
                        height: size.width * 0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Número: $numeroHabitacion',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Costo: \$${costoHabitacion}',
                          style: const TextStyle(
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
    );
  }
}
