import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_app/core/server/server_config.dart';
getImageNetwork(
    {required String url,
    double? width,
    double? height,
    Color? imgColor,
    AlignmentGeometry? alignmentGeometry}) {
  // String cleanUrl = url.contains("storage") ? url : "/storage/$url";
  return Image.network(
    ServerConstApis.baseAPIForImages + url,
    // url,
    width: width,
    alignment: alignmentGeometry ?? Alignment.center,
    height: height,
    fit: BoxFit.cover,
    color: imgColor,
    loadingBuilder:
        (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
      if (loadingProgress == null) {
        return child; // Image has finished loading
      }
      return SizedBox();
    },
    errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
      log(stackTrace.toString());
      log(error.toString());
      return SizedBox(
        width: width,
        height: height,
        child: const Center(
          child: Icon(
            Icons.error, // or any other icon or widget
            // size: 1,
          ),
        ),
      );
    },
  );
}
