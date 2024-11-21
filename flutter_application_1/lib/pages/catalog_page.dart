import 'package:flutter/material.dart';
import 'form_page.dart';

class CatalogPage extends StatelessWidget {
  final lotes = [
    {
      'descripcion':
          'Manzana H, ubicado cerca a la plaza, pasaje 8, dar click para visualizar mejor el lote.',
      'precio': 'S/ 4000',
      'imagen': 'lote1.png',
    },
    {
      'descripcion':
          'Manzana I, ubicado cerca a la plaza, pasaje 9, dar click para visualizar mejor el lote.',
      'precio': 'S/ 4000',
      'imagen': 'lote2.png',
    },
    {
      'descripcion':
          'Manzana E, ubicado al costado derecho de la plaza, dar click para visualizar mejor el lote.',
      'precio': 'S/ 4000',
      'imagen': 'lote3.png',
    },
    {
      'descripcion':
          'Manzana C, ubicado al costado izquierdo de la plaza, dar click para visualizar mejor el lote.',
      'precio': 'S/ 4000',
      'imagen': 'lote4.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CATÁLOGO DE LOTES'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: lotes.length,
        itemBuilder: (context, index) {
          final lote = lotes[index];
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    lote['imagen']!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Descripción:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(lote['descripcion']!),
                        SizedBox(height: 5),
                        Text(
                          'Inicial: ${lote['precio']}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner),
            label: 'Formulario',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormPage()),
            );
          }
        },
      ),
    );
  }
}
