import 'package:flutter/material.dart';

class PortfolioScreenTablet extends StatelessWidget {
  const PortfolioScreenTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tablet Layout'),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tablet Button'),
            ),
          ],
        ),
      ),
    );
  }
}