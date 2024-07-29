import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vs_project/dashboard.dart';
import 'package:vs_project/side_menu_controller.dart';
import 'package:vs_project/widget/responsive.dart';
import 'package:vs_project/widget/side_menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final sideMenuController = Provider.of<SideMenuController>(context);
    return Scaffold(
        key: sideMenuController.scaffoldKey,
        drawer: const SideMenu(),
        body: SafeArea(
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  child: SideMenu(),
                ),
              const Expanded(flex: 5, child: Dashboard())
            ],
          ),
        ));
  }
}
