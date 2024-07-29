import 'package:flutter/material.dart';
import 'package:vs_project/dashboard/desktop/desktop.dart';
import 'package:vs_project/dashboard/mobile/mobile.dart';
import 'package:vs_project/dashboard/tablet/tablet.dart';
import 'package:vs_project/widget/responsive.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: DesktopDashboard(),
      mobile: MobileDashboard(),
      tablet: TabletDashboard(),
    );
  }
}
