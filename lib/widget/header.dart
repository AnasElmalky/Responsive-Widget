import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vs_project/side_menu_controller.dart';
import 'package:vs_project/widget/responsive.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final sideMenuController = Provider.of<SideMenuController>(context);
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: sideMenuController.controllMenu,
            icon: Icon(Icons.menu, color: Colors.white),
          ),
        if (!Responsive.isMobile(context))
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Dashboard',
              style: TextStyle(color: Colors.white),
            ),
          ),
      ],
    );
  }
}
