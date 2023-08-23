import 'package:flutter/material.dart';
import 'package:portfolio/views/tablet_portfolio_page.dart';
import '../widgets/size_widget.dart';
import 'desktop_portfolio_page.dart';
import 'mobile_portfolio_page.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("width: $width");
    print("height: $height");

    return const Responsive(
      mobile: MobileLayout(), // Widget for mobile view
      tablet: TabletLayout(), // Widget for tablet view
      desktop: DesktopLayout(), // Widget for desktop view
    );
  }
}
