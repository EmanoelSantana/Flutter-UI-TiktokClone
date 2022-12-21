import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tiktokclone/pages/home_page.dart';
import 'package:tiktokclone/theme/colors.dart';
import 'package:tiktokclone/widgets/iktok_icons.dart';
import 'package:tiktokclone/widgets/upload_icon.dart';

class RootPage extends StatefulWidget {
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomePage(),
        Center(
          child: Text(
            'Discover',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
        Center(
          child: Text(
            'Upload',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
        Center(
          child: Text(
            'All Activity',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
        Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    List bottomItems = [
      {'icon': TikTokIcons.home, 'label': 'Home', 'isIcon': true},
      {'icon': TikTokIcons.search, 'label': 'Discover', 'isIcon': true},
      {'icon': '', '': 'Home', 'isIcon': false},
      {'icon': TikTokIcons.heart, 'label': 'Inbox', 'isIcon': true},
      {'icon': TikTokIcons.profile, 'label': 'Me', 'isIcon': true},
    ];

    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: appBgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(bottomItems.length, (index) {
              return bottomItems[index]['isIcon']
                  ? InkWell(
                      onTap: () {
                        selectedIndex(index);
                      },
                      child: Column(
                        children: [
                          Icon(
                            bottomItems[index]['icon'],
                            color: white,
                          ),
                          SizedBox(height: 5),
                          Text(
                            bottomItems[index]['label'],
                            style: TextStyle(
                              color: white,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        selectedIndex(index);
                      },
                      child: UploadIcon(),
                    );
            })),
      ),
    );
  }

  selectedIndex(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
