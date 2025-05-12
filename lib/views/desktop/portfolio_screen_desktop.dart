import 'package:cv_web/views/desktop/home/home_screen.dart';
import 'package:cv_web/views/desktop/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class PortfolioScreenDesktop extends StatelessWidget {
  const PortfolioScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const HomeScreen(),
                ),
                Container(
                  height: 500,
                  color: Colors.blue,
                  child: const Center(child: Text('Section 2')),
                ),
                Container(
                  height: 500,
                  color: Colors.blue,
                  child: const Center(child: Text('Section 2')),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: TopBar(),
          ),
        ],
      ),
    );
  }
}
