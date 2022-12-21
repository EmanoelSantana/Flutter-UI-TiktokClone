import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tiktokclone/_mock_data/data_json.dart';
import 'package:tiktokclone/widgets/album_widget.dart';
import 'package:tiktokclone/widgets/icon_widget.dart';
import 'package:tiktokclone/widgets/iktok_icons.dart';
import 'package:tiktokclone/widgets/profile_widget.dart';

class RightPainel extends StatelessWidget {
  const RightPainel({
    super.key,
    required this.size,
    required this.albumImg,
    required this.comments,
    required this.likes,
    required this.profileImg,
    required this.shares,
  });
  final String profileImg;
  final String likes;
  final String comments;
  final String shares;
  final String albumImg;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: size.height,
        child: Column(
          children: [
            Container(
              height: size.height * 0.3,
            ),
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getProfile(profileImg),
                  getIcon(TikTokIcons.heart, 35, likes),
                  getIcon(TikTokIcons.chat_bubble, 35, comments),
                  getIcon(TikTokIcons.reply, 25, shares),
                  getAlbum(albumImg),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
