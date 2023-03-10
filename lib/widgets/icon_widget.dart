import 'package:flutter/material.dart';
import 'package:tiktokclone/theme/colors.dart';

Widget getIcon(icon, size, count) {
  return Column(
    children: [
      Icon(
        icon,
        color: white,
        size: size,
      ),
      SizedBox(height: 5),
      Text(
        count,
        style: TextStyle(
          color: white,
          fontWeight: FontWeight.w500,
        ),
      )
    ],
  );
}
