
import 'package:flutter/material.dart';

import 'category_card.dart';
//StatelessWidget面向那些始终不变的UI控件，比如标题栏中的标题；
// 而StatefulWidget则是面向可能会改变UI状态的控件，比如有点击反馈的按钮。


//作废，但是有保存价值

//Home头部组件，滑动列表图片
class CategoryBanner extends StatelessWidget {
  const CategoryBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //可选值 Scaffold（body只能Scaffold用） Container Stack SingleChildScrollView
    //SingleChildScrollView用于可滑动图片组件
    return
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

    );
  }
}