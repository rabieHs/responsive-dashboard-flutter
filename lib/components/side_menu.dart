import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            MenuItem(
                icon: "assets/icons/menu_dashbord.svg",
                title: "Dashboard",
                onPress: () {}),
            MenuItem(
                icon: "assets/icons/menu_tran.svg",
                title: "Transactions",
                onPress: () {}),
            MenuItem(
                icon: "assets/icons/menu_task.svg",
                title: "Task",
                onPress: () {}),
            MenuItem(
                icon: "assets/icons/menu_doc.svg",
                title: "Documents",
                onPress: () {}),
            MenuItem(
                icon: "assets/icons/menu_store.svg",
                title: "Store",
                onPress: () {}),
            MenuItem(
                icon: "assets/icons/menu_notification.svg",
                title: "Notification",
                onPress: () {})
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onPress;
  const MenuItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
