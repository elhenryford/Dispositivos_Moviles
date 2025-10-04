import 'package:flutter/material.dart';

class CrearHabitacion extends StatefulWidget {
  const CrearHabitacion({super.key});

  @override
  State<CrearHabitacion> createState() => _CrearHabitacionState();
}

class _CrearHabitacionState extends State<CrearHabitacion> {
  String? _opcionSeleccionada; // para RadioButtons

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;

    return Container(
      width: double.infinity,
      height: h,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF0088FF), // Fondo azul
        borderRadius: BorderRadius.circular(30),
      ),
      child: ListView(
        children: [
          const SizedBox(height: 16),
          Text(
            'Crear Habitación',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w * 0.08,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter',
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),

          // Imagen/preview
          Container(
            width: w * 0.7,
            height: w * 0.4,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 16),

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
          const SizedBox(height: 16),

          // Campos de texto
          _campoTexto(context, 'Número:'),
          const SizedBox(height: 12),
          _campoTexto(context, 'Precio:'),
          const SizedBox(height: 20),

          // Opciones con radio buttons
          _radioOpcion('Doble'),
          _radioOpcion('Mono Ambiente'),
          _radioOpcion('Suit'),
          _radioOpcion('Wifi'),
          const SizedBox(height: 24),

          // Botón enviar
          SizedBox(
            width: w * 0.5,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF212121),
              ),
              onPressed: () {
                // acción al enviar
              },
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

  // Campo de texto (Número / Precio)
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

  // Opción con RadioButton
  Widget _radioOpcion(String texto) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: w * 0.85,
      height: 45,
      decoration: BoxDecoration(
        color: const Color(0xFF0067C2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              texto,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ),
          Radio<String>(
            value: texto,
            groupValue: _opcionSeleccionada,
            activeColor: Colors.green, // verde cuando se selecciona
            onChanged: (value) {
              setState(() {
                _opcionSeleccionada = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
