import 'package:flutter/material.dart';

import '../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            title: "Document Files",
            SrcSVG: "assets/icons/Documents.svg",
            amount: "1.3GB",
            numberOfFiles: 1532,
          ),
          StorageInfoCard(
            title: "Media Files",
            SrcSVG: "assets/icons/media.svg",
            amount: "5.2GB",
            numberOfFiles: 1532,
          ),
          StorageInfoCard(
            title: "Other Files",
            SrcSVG: "assets/icons/folder.svg",
            amount: "2.3GB",
            numberOfFiles: 3002,
          ),
          StorageInfoCard(
            title: "Unknown Files",
            SrcSVG: "assets/icons/unknown.svg",
            amount: "8.3GB",
            numberOfFiles: 2232,
          ),
        ],
      ),
    );
  }
}
