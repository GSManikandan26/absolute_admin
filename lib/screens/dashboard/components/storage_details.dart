import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "5 Stars",
            amountOfFiles: "200 Users",
            numOfFiles: 103,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "4 Stars",
            amountOfFiles: "600 Users",
            numOfFiles: 328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "3 Stars",
            amountOfFiles: "200 Users",
            numOfFiles: 128,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Below 2 Stars",
            amountOfFiles: "100 Users",
            numOfFiles: 40,
          ),
        ],
      ),
    );
  }
}
