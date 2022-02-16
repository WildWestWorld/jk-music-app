import 'package:flutter/material.dart';
import 'package:jk_music_app/theme.dart';
import 'package:jk_music_app/widget/homeComponent/homeHeader.dart';
import 'package:jk_music_app/widget/homeComponent/musicianBanner.dart';
//StatelessWidget面向那些始终不变的UI控件，比如标题栏中的标题；
// 而StatefulWidget则是面向可能会改变UI状态的控件，比如有点击反馈的按钮。
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
//Home页面的主界面，他由多个组件构成
  @override
  Widget build(BuildContext context) {
    //Home显示主界面
    //可选值 Scaffold（body只能Scaffold用） Container Stack
    return Scaffold(
        body:Column(
          children: const <Widget>[
            //自定义组件，在widget/homeComponent文件夹里面
            HomeHeader(),
            SizedBox(height: 40,),
            //同上
            MusicianBanner(title: "流行音乐人",)
          ],
      //Stack 的作用就是让绝对定位

        )
    );
  }
}
