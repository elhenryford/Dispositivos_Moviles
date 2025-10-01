import 'package:flutter/material.dart';
class MisReservas extends StatefulWidget {
  const MisReservas({super.key});

  @override
  State<MisReservas> createState() => _MisReservasState();
}

class _MisReservasState extends State<MisReservas> {
  @override
  Widget build(BuildContext context) {
    // Medidas de la pantalla
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;

    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: const Color(0xFF0088FF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          // Título
          Positioned(
            left: w * 0.12,
            top: h * 0.02,
            child: Container(
              width: w * 0.75,
              height: h * 0.07,
              decoration: BoxDecoration(
                color: const Color(0xFF0067C2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Mis Reservas',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w * 0.08,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          // Lista de reservas
          Positioned(
            top: h * 0.15,
            left: w * 0.05,
            right: w * 0.05,
            bottom: h * 0.05,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: h * 0.03),
                  padding: EdgeInsets.all(w * 0.04),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: w * 0.18,
                        height: h * 0.09,
                        decoration: BoxDecoration(
                          color: const Color(0xFF02FF13),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(width: w * 0.05),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Numero: ${index + 1}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: w * 0.045,
                            ),
                          ),
                          Text(
                            "Costo: \$${(index + 1) * 100}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: w * 0.04,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
