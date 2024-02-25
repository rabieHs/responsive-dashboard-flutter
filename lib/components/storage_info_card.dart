import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class StorageInfoCard extends StatelessWidget {
  final String title, SrcSVG, amount;
  final int numberOfFiles;
  const StorageInfoCard(
      {Key? key,
      required this.numberOfFiles,
      required this.amount,
      required this.title,
      required this.SrcSVG})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.15),
        ),
        borderRadius: BorderRadius.circular(defaultPadding),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(SrcSVG),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "$numberOfFiles File",
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white70),
                )
              ],
            ),
          )),
          Text(amount)
        ],
      ),
    );
  }
}
