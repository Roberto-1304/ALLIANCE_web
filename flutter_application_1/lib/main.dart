import 'package:flutter/material.dart';
import 'pages/catalog_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catálogo de Lotes',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CatalogPage(),
    );
  }
}
