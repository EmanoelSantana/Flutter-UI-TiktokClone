import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tiktokclone/theme/colors.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Following',
            style: TextStyle(
              color: white.withOpacity(0.5),
              fontSize: 16,
            )),
        SizedBox(width: 5),
        Text('|',
            style: TextStyle(
              color: white.withOpacity(0.3),
              fontSize: 16,
            )),
        SizedBox(width: 5),
        Text('For You',
            style: TextStyle(
              color: white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}
