import 'package:flutter/material.dart';
import 'package:tiktokclone/_mock_data/data_json.dart';
import 'package:tiktokclone/theme/colors.dart';
import 'package:tiktokclone/widgets/header_home_page.dart';
import 'package:tiktokclone/widgets/left_painel.dart';
import 'package:tiktokclone/widgets/right_painel.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    super.key,
    required this.size,
    required this.name,
    required this.caption,
    required this.songName,
    required this.profileImg,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.albumImg,
    required this.videoUrl,
  });

  final Size size;
  final String name;
  final String videoUrl;
  final String caption;
  final String songName;
  final String profileImg;
  final String likes;
  final String comments;
  final String shares;
  final String albumImg;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _videoPlayerController;
  bool isShowingPlaying = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((value) {
        _videoPlayerController.play();
        setState(() {
          isShowingPlaying = false;
        });
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        setState(() {
          _videoPlayerController.value.isPlaying
              ? _videoPlayerController.pause()
              : _videoPlayerController.play();
        });
      }),
      child: Container(
        width: widget.size.width,
        height: widget.size.height,
        child: Stack(
          children: [
            Container(
              width: widget.size.width,
              height: widget.size.height,
              child: Stack(
                children: [
                  VideoPlayer(_videoPlayerController),
                  _videoPlayerController.value.isPlaying
                      ? Center(
                          child: Icon(
                            Icons.play_arrow,
                            size: 80,
                            color: white.withOpacity(0.5),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              width: widget.size.width,
              height: widget.size.height,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 25, right: 15, left: 15, bottom: 10),
                  child: Column(children: [
                    HeaderHomePage(),
                    Flexible(
                      child: Row(
                        children: [
                          LeftPainel(
                            size: widget.size,
                            name: widget.name,
                            caption: widget.caption,
                            songName: widget.songName,
                          ),
                          RightPainel(
                            size: widget.size,
                            albumImg: widget.albumImg,
                            comments: widget.comments,
                            likes: widget.likes,
                            profileImg: widget.profileImg,
                            shares: widget.shares,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
