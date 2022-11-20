import 'package:flutter/material.dart';

class BandejaPage extends StatelessWidget {
  const BandejaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> products = [
      {
        'name': 'CocaCola',
        'description': '500ml',
        'pCompra': '2.00',
        'pVenta': '3.50'
      },
      {
        'name': 'Inka COla',
        'description': '500ml',
        'pCompra': '1.00',
        'pVenta': '3.50'
      },
      {
        'name': 'Oreo',
        'description': '1 UND',
        'pCompra': '2.00',
        'pVenta': '3.00'
      },
      {
        'name': 'Gloria',
        'description': 'Leche 1T',
        'pCompra': '2.00',
        'pVenta': '5.50'
      },
      {
        'name': 'Ariel',
        'description': '500Kg',
        'pCompra': '2.00',
        'pVenta': '4.00'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'La Bodeguita de Pakkun',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataTable(
            border: TableBorder.all(color: Colors.red),
            columns: const [
              DataColumn(
                  label: Text(
                'Producto',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                ),
              )),
              DataColumn(
                  label: Text(
                'Peso',
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 20,
                ),
              )),
              DataColumn(
                  label: Text(
                'P.Compra',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                ),
              )),
              DataColumn(
                  label: Text(
                'P.Venta',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              )),
            ],
            rows: products
                .map(
                  (e) => DataRow(
                    cells: [
                      DataCell(Text(
                        e['name'],
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      )),
                      DataCell(Text(
                        e['description'],
                        style: const TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                        ),
                      )),
                      DataCell(Text(
                        'S/. ' + e['pCompra'],
                        style: const TextStyle(
                          color: Colors.lime,
                          fontSize: 15,
                        ),
                      )),
                      DataCell(Text(
                        'S/. ' + e['pVenta'],
                        style: const TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 15,
                        ),
                      )),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
