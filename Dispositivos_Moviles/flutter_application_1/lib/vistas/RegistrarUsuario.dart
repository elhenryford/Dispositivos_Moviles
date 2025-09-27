import 'package:flutter/material.dart';

class RegistrarUsuario extends StatelessWidget {
  const RegistrarUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.03),
          decoration: BoxDecoration(
            color: const Color(0xFF0088FF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Título
              Text(
                "Registrar Usuario",
                style: TextStyle(
                  fontSize: width * 0.08,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: height * 0.02),

              // Foto
              Container(
                width: width * 0.6,
                height: height * 0.2,
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: height * 0.015),

              // Botón subir foto
              Container(
                width: width * 0.7,
                height: height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF212121),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      "SUBIR FOTO",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.04,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),

              // Campos de texto
              _buildTextField(width, height, "Nombre"),
              SizedBox(height: height * 0.02),
              _buildTextField(width, height, "Teléfono"),
              SizedBox(height: height * 0.02),
              _buildTextField(width, height, "Cédula"),
              SizedBox(height: height * 0.02),
              _buildTextField(width, height, "Email"),
              SizedBox(height: height * 0.02),
              _buildTextField(width, height, "Password"),
              SizedBox(height: height * 0.02),
              _buildTextField(width, height, "Confirmar Password"),
              SizedBox(height: height * 0.05),

              // Botón enviar
              Container(
                width: width * 0.6,
                height: height * 0.06,
                decoration: BoxDecoration(
                  color: const Color(0xFF212121),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                  child: Text(
                    "ENVIAR",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.05), // espacio extra al final
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(double width, double height, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: width * 0.045,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: height * 0.005),
        Container(
          width: double.infinity,
          height: height * 0.06,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ],
    );
  }
}
