import 'package:flutter/material.dart';

class CrearHabitacion extends StatefulWidget {
  const CrearHabitacion({super.key});

  @override
  State<CrearHabitacion> createState() => _CrearHabitacionState();
}

class _CrearHabitacionState extends State<CrearHabitacion> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;

    return Container(
      width: double.infinity,
      height: h, // Ocupa todo el alto de la pantalla
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF0088FF), // Fondo celeste ocupa toda la pantalla
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          Text(
            'Crear Habitación',
            style: TextStyle(
              fontSize: w * 0.08,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter',
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),

          // Imagen/preview
          Container(
            width: w * 0.7,
            height: w * 0.4,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 16),

          // SUBIR FOTO
          Row(
            children: [
              Container(
                width: w * 0.25,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF212121),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      'SUBIR FOTO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Campos de texto
          _campoTexto(context, 'Número:'),
          SizedBox(height: 12),
          _campoTexto(context, 'Precio:'),
          SizedBox(height: 20),

          // Opciones
          _opcion(context, 'Doble', const Color(0xFF15FF00)),
          SizedBox(height: 8),
          _opcion(context, 'Mono Ambiente'),
          SizedBox(height: 8),
          _opcion(context, 'Suit'),
          SizedBox(height: 8),
          _opcion(context, 'Wifi'),
          SizedBox(height: 24),

          // Botón enviar
          SizedBox(
            width: w * 0.5,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF212121),
              ),
              onPressed: () {},
              child: const Text(
                'ENVIAR',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _campoTexto(BuildContext context, String label) {
    final w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          width: w * 0.25,
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 30,
            color: const Color(0xFFD9D9D9),
          ),
        ),
      ],
    );
  }

  Widget _opcion(BuildContext context, String texto, [Color color = const Color(0xFF0067C2)]) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.85,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.centerLeft,
      child: Text(
        texto,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
      ),
    );
  }
}
