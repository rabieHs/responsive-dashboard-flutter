// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:responsive_dashboard_flutter/models/MyFiles.dart';
import 'package:responsive_dashboard_flutter/responsive.dart';

import '../constants.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5,
                        vertical: defaultPadding)),
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Add New"))
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
            mobile: FileInfoCardGridview(
              crossAxisCount: _size.width < 650 ? 2 : 4,
              childAspectRatio: _size.width < 650 ? 1.3 : 1,
            ),
            tablet: FileInfoCardGridview(),
            desktop: FileInfoCardGridview(
              childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
            )),
      ],
    );
  }
}

class FileInfoCardGridview extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  FileInfoCardGridview(
      {Key? key, this.crossAxisCount = 4, this.childAspectRatio = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: demoMyFiels.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRatio),
        itemBuilder: (context, index) => FileInfoCard(
              info: demoMyFiels[index],
            ));
  }
}
