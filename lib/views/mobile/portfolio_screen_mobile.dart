import 'package:flutter/material.dart';

class PortfolioScreenMobile extends StatelessWidget {
  const PortfolioScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Mobile Layout'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Mobile Button'),
          ),
        ],
      ),
    );
  }
}