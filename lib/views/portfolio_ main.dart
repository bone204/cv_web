// ignore: file_names
import 'package:cv_web/views/desktop/portfolio_screen_desktop.dart';
import 'package:cv_web/views/mobile/portfolio_screen_mobile.dart';
import 'package:cv_web/views/tablet/portfolio_screen_tablet.dart';
import 'package:cv_web/widgets/resizeable_layout.dart';
import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: PortfolioScreenMobile(),
      tablet: PortfolioScreenTablet(),
      desktop: PortfolioScreenDesktop(),
    );
  }
} 