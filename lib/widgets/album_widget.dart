import 'package:flutter/material.dart';
import 'package:tiktokclone/theme/colors.dart';

Widget getAlbum(albumImg) {
  return Container(
    width: 55,
    height: 60,
    child: Stack(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: black,
          ),
        ),
        Center(
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(albumImg),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
