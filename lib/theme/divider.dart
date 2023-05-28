import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

Widget horizontalDivider(double paddingStart,double paddingEnd) {
  return Divider(
      color: veryLightGreen,
      //color of divider
      height: 2,
      //height spacing of divider
      thickness: 2,
      //thickness of divier line
      indent: paddingStart,
      //spacing at the start of divider
      endIndent: paddingEnd //spacing at the end of divider
      );
}
