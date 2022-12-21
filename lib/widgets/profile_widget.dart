import 'package:flutter/material.dart';
import 'package:tiktokclone/theme/colors.dart';

Widget getProfile(profileImg) {
  return Container(
    width: 55,
    height: 55,
    child: Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: white),
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(profileImg), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          left: 18,
          bottom: -5,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primary,
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: white,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
