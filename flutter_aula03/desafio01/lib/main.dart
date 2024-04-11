import 'package:flutter/material.dart';

// Modelo de dados para representar um produto de papelaria
class StationeryProduct {
  final String name;
  final double price;
  final String description;

  StationeryProduct({required this.name, required this.price, required this.description});
}

// Tela inicial que exibe a lista de produtos de papelaria
class InitialScreen extends StatelessWidget {
  final List<StationeryProduct> products;

  InitialScreen({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catálogo de Produtos de Papelaria')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/details',
                arguments: products[index],
              );
            },
          );
        },
      ),
    );
  }
}

// Tela de detalhes que exibe informações detalhadas sobre um produto de papelaria
class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final StationeryProduct product = ModalRoute.of(context)!.settings.arguments as StationeryProduct;

    return Scaffold(
      appBar: AppBar(title: Text('Detalhes do Produto de Papelaria')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${product.name}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            Text('Preço: \$${product.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Descrição: ${product.description}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Lista de produtos de papelaria
  final List<StationeryProduct> products = [
    StationeryProduct(name: 'Caneta', price: 2.5, description: 'Caneta esferográfica azul'),
    StationeryProduct(name: 'Caderno', price: 5.0, description: 'Caderno de capa dura, 100 folhas'),
    StationeryProduct(name: 'Lápis', price: 1.0, description: 'Lápis HB nº2'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Produtos de Papelaria',
      initialRoute: '/',
      routes: {
        '/': (context) => InitialScreen(products: products),
        '/details': (context) => DetailsScreen(),
      },
    );
  }
}
