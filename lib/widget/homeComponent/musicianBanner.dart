import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jk_music_app/theme.dart';
import 'package:jk_music_app/widget/homeComponent/musicianBannerComponent/musicianCard.dart';

import 'musicianBannerComponent/titleWord.dart';
//StatelessWidget面向那些始终不变的UI控件，比如标题栏中的标题；
// 而StatefulWidget则是面向可能会改变UI状态的控件，比如有点击反馈的按钮。

//音乐人
class MusicianBanner extends StatelessWidget {
  const MusicianBanner({Key? key,required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    //可选值 Scaffold（body只能Scaffold用） Container Stack
    return  Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           TitleWord(title: title,more: "更多",),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             padding: EdgeInsets.only(left: 25),
             child: Row(

               children: <Widget>[
                 MusicianCard(name: "黄渤",image:'lib/assets/images/musician-photo.png',category: "流行音乐",),
                 MusicianCard(name: "黄渤",image:'lib/assets/images/musician-photo.png',category: "流行音乐",),
                 MusicianCard(name: "黄渤",image:'lib/assets/images/musician-photo.png',category: "流行音乐",),
                 MusicianCard(name: "黄渤",image:'lib/assets/images/musician-photo.png',category: "流行音乐",),
               ],
             ),
           )

         ],


      ),
    );
  }
}

