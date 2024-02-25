// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:responsive_dashboard_flutter/constants.dart';
import 'package:responsive_dashboard_flutter/models/RecentFile.dart';
import 'package:responsive_dashboard_flutter/responsive.dart';

import '../../components/chart.dart';
import '../../components/header.dart';
import '../../components/my_files.dart';
import '../../components/recent_files.dart';
import '../../components/storage_details.dart';
import '../../components/storage_info_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        MyFiles(),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        RecentFiles(),
                        if (Responsive.isMobile(context))
                          SizedBox(
                            height: defaultPadding,
                          ),
                        if (Responsive.isMobile(context)) StorageDetails()
                      ],
                    )),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
