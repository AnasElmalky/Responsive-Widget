import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff1d1d42),
      child: ListView(
        children: [
          DrawerHeader(
            child: CircleAvatar(),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.apps,
              color: Colors.white,
            ),
            title: Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            horizontalTitleGap: 0,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.chat,
              color: Colors.white,
            ),
            title: Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            horizontalTitleGap: 0,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.mail,
              color: Colors.white,
            ),
            title: Text(
              'Email',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            horizontalTitleGap: 0,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            horizontalTitleGap: 0,
          ),
        ],
      ),
    );
  }
}
