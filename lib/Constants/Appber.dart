import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.notifications, color: Colors.white),
        ),
      ],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
