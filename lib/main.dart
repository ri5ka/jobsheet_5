import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.centerLeft, // Atur posisi ke kiri
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
            children: [
              TeksUtama(
                teks1: 'ABRIZAN CHINTIO YANSO',
                teks2: 'Nim: STI202102326 ',
              ),
              TeksUtama(
                teks1: 'NOFI AMALIA',
                teks2: ' Nim: STI202102327',
              ),
              Container( 
                color: Colors.green, 
                child: TeksUtama(
                  teks1: 'RISKA ANGGRAENI SANTOSO',
                  teks2: 'Nim: STI202102329',
                ),
              ),
              TeksUtama(
                teks1: 'SEPTIANI PUTRI',
                teks2: 'Nim : STI202102330',
              ),
              TeksUtama(
                teks1: 'ABDUL SHAKUR',
                teks2: 'Nim: STI202102334',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}


