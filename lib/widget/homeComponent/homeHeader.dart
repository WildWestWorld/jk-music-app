import 'package:flutter/material.dart';
import 'package:jk_music_app/widget/homeComponent/homeHeaderComponent/category_banner.dart';

import 'homeHeaderComponent/categoryBannerComponent/category_card.dart';
import 'homeHeaderComponent/notification_area.dart';



class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: 357,
      child: Stack(children: <Widget>[
        NotificationArea(),
        Column(
          children: <Widget>[
            SizedBox(
              height: 137,
            ),
          //后期需要把Card改为Banner card是单个的，banner是整个的
           CategoryBanner(),
          ],
        )
      ]),
    );
  }
}