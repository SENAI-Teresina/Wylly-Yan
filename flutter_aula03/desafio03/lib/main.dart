import 'package:flutter/material.dart';

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BankHomeScreen(),
    );
  }
}

class BankHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banco XYZ'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Implement notification action
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Implement settings action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Saldo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'R\$ 1.000,00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Implement 'Ver extrato' action
                        },
                        child: Text('Ver extrato'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Implement 'Últimas transações' action
                        },
                        child: Text('Últimas transações'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Menu Rápido',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _QuickActionButton(icon: Icons.transfer_within_a_station, label: 'Transferir', onPressed: () {}),
                _QuickActionButton(icon: Icons.payment, label: 'Pagar', onPressed: () {}),
                _QuickActionButton(icon: Icons.attach_money, label: 'Depositar', onPressed: () {}),
                _QuickActionButton(icon: Icons.credit_card, label: 'Cartões', onPressed: () {}),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Serviços',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  _ServiceCard(icon: Icons.security, title: 'Seguros'),
                  _ServiceCard(icon: Icons.trending_up, title: 'Investimentos'),
                  _ServiceCard(icon: Icons.monetization_on, title: 'Empréstimos'),
                  // Add more service cards as needed
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Movimentações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pagamentos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Mais',
          ),
        ],
      ),
    );
  }
}

class _QuickActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _QuickActionButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ServiceCard({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30),
            SizedBox(height: 5),
            Text(title),
          ],
        ),
      ),
    );
  }
}
