import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tiktokclone/_mock_data/data_json.dart';
import 'package:tiktokclone/theme/colors.dart';
import 'package:tiktokclone/widgets/album_widget.dart';
import 'package:tiktokclone/widgets/header_home_page.dart';
import 'package:tiktokclone/widgets/icon_widget.dart';
import 'package:tiktokclone/widgets/iktok_icons.dart';
import 'package:tiktokclone/widgets/left_painel.dart';
import 'package:tiktokclone/widgets/profile_widget.dart';
import 'package:tiktokclone/widgets/right_painel.dart';
import 'package:tiktokclone/widgets/video_player_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: items.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return RotatedBox(
      quarterTurns: 1,
      child: TabBarView(
          controller: _tabController,
          children: List.generate(items.length, (index) {
            return RotatedBox(
              quarterTurns: -1,
              child: VideoPlayerWidget(
                size: size,
                albumImg: items[index]['albumImg'],
                caption: items[index]['caption'],
                comments: items[index]['comments'],
                likes: items[index]['likes'],
                name: items[index]['name'],
                profileImg: items[index]['profileImg'],
                shares: items[index]['shares'],
                songName: items[index]['songName'],
                videoUrl: items[index]['videoUrl'],
              ),
            );
          })),
    );
  }

  @override
  Widget build(BuildContext context) {
    return getBody();
  }
}
