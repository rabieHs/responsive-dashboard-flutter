// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard_flutter/controllers/MenuController.dart';
import 'package:responsive_dashboard_flutter/responsive.dart';
import 'package:responsive_dashboard_flutter/screens/dashboard/dashboard_screen.dart';
import 'package:provider/provider.dart';
import '../../components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      key: context.read<MenuStateController>().scaffoldKey,
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
              child: SideMenu(),
            ),
          Expanded(
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      )),
    );
  }
}
