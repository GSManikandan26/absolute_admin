
import 'package:absolute_admin/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recently Added",
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              // minWidth: 600,
              columns: const [
                DataColumn(
                  label: Text("Vendor Name",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                DataColumn(
                  label: Text("Date",style: TextStyle(color: Colors.black),),
                ),
                DataColumn(
                  label: Text("No.of Properties",style: TextStyle(color: Colors.black),),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!,style: const TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!,style: const TextStyle(color: Colors.black),)),
      DataCell(Text(fileInfo.size!,style: const TextStyle(color: Colors.black),)),
    ],
  );
}
