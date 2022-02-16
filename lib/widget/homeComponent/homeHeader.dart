import 'package:flutter/material.dart';
import 'package:jk_music_app/widget/homeComponent/homeHeaderComponent/category_banner.dart';

import 'homeHeaderComponent/category_card.dart';
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
        //自定义组件
        NotificationArea(),
        Column(
          children: <Widget>[
            SizedBox(
              height: 137,
            ),
        //滑动的卡片
        SingleChildScrollView(
        // scrollDirection: Axis.horizontal 横线滑动
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: <Widget>[
            CategoryCard(title: "嘻哈",
                description: "1.4万播放量",
                image: 'lib/assets/images/banner.png',
                onPress: ()=>{print("跳转")} ),
            CategoryCard(title: "嘻哈",
                description: "1.4万播放量",
                image: 'lib/assets/images/banner.png',
                onPress: ()=>{print("跳转")} ),
            CategoryCard(title: "嘻哈",
                description: "1.4万播放量",
                image: 'lib/assets/images/banner.png',
                onPress: ()=>{print("跳转")} ),
            CategoryCard(title: "嘻哈",
                description: "1.4万播放量",
                image: 'lib/assets/images/banner.png',
                onPress: ()=>{print("跳转")} ),
            CategoryCard(title: "嘻哈",
                description: "1.4万播放量",
                image: 'lib/assets/images/banner.png',
                onPress: ()=>{print("跳转")} ),
            CategoryCard(title: "嘻哈",
                description: "1.4万播放量",
                image: 'lib/assets/images/banner.png',
                onPress: ()=>{print("跳转")} ),
          ],
        ),

      ),
          ],
        )
      ]),
    );
  }
}