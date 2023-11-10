import 'package:absolute_admin/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "User",
    numOfFiles: 1328,
    svgSrc: "assets/icons/user.svg",
    totalStorage: "10000+",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Vendor",
    numOfFiles: 55,
    svgSrc: "assets/icons/vendor.svg",
    totalStorage: "1000+",
    color: Color(0xFFFFA113),
    percentage: 55,
  ),
  CloudStorageInfo(
    title: "Properties",
    numOfFiles: 357,
    svgSrc: "assets/icons/property.svg",
    totalStorage: "500+",
    color: Color(0xFF215473),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Cities",
    numOfFiles: 300,
    svgSrc: "assets/icons/location.svg",
    totalStorage: "300+",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
