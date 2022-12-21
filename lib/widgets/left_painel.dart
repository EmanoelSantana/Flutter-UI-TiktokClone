import 'package:flutter/material.dart';
import 'package:tiktokclone/_mock_data/data_json.dart';
import 'package:tiktokclone/theme/colors.dart';

class LeftPainel extends StatelessWidget {
  const LeftPainel({
    super.key,
    required this.name,
    required this.caption,
    required this.songName,
    required this.size,
  });
  final String name;
  final String caption;
  final String songName;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width * 0.78,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              name,
              style: TextStyle(
                color: white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              caption,
              style: TextStyle(
                color: white,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: white,
                  size: 15,
                ),
                Text(
                  songName,
                  style: TextStyle(
                    color: white,
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
