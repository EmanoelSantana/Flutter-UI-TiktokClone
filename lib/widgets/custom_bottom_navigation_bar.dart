import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {Key? key, required this.selectedPageIndex, required this.onIconTap})
      : super(key: key);

  final int selectedPageIndex;
  final Function onIconTap;

  @override
  Widget build(BuilContainercontext) {
    return Row(
      children: [
        _bottomBarNavItem(),
      ],
    );
  }

  _bottomBarNavItem(
    int index,
    String label,
    TextStyle textStyle,
    String iconName,
  ) {
    bool isSelected = selectedPageIndex == index;
    Color iconAndTextColor = isSelected ? Colors.black : Colors.grey;

    if (isSelected && selectedPageIndex == 0) iconAndTextColor = Colors.white;

    return Column(
      children: [
        SvgPicture.asset('assets/'),
      ],
    );
  }
}
