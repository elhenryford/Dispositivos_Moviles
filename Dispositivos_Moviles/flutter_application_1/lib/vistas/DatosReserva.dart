import 'package:flutter/material.dart';

class DatosReserva extends StatefulWidget {
  const DatosReserva({super.key});

  @override
  State<DatosReserva> createState() => _DatosReservaState();
}

class _DatosReservaState extends State<DatosReserva> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight, // mínimo: altura de la pantalla
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF0088FF),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: w * 0.05, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Datos de la Reserva',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: w * 0.08,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),

                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Habitación:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: w * 0.07,
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 50,
                          color: Colors.black,
                          alignment: Alignment.center,
                          child: Text(
                            '15',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: w * 0.07,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Costo', style: TextStyle(fontSize: w * 0.05, color: Colors.black)),
                        Text('Checkin', style: TextStyle(fontSize: w * 0.05, color: Colors.black)),
                        Text('Checkout', style: TextStyle(fontSize: w * 0.05, color: Colors.black)),
                      ],
                    ),
                    SizedBox(height: 10),

                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.black,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '150    29/08/2025 23:30      01/09/2025 17:45',
                        style: TextStyle(color: Colors.white, fontSize: w * 0.04),
                      ),
                    ),
                    SizedBox(height: 40),

                    Center(
                      child: Container(
                        width: w * 0.6,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF212121),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'CANCELAR RESERVA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: w * 0.045,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
