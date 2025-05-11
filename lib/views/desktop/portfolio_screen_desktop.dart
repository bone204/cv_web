import 'package:cv_web/views/desktop/home/home_screen.dart';
import 'package:cv_web/views/desktop/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class PortfolioScreenDesktop extends StatelessWidget {
  const PortfolioScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TopBar(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}