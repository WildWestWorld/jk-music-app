
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jk_music_app/theme.dart';

import 'lastPlayMusicListComponent/lastPlayMusicCard.dart';
//StatelessWidget面向那些始终不变的UI控件，比如标题栏中的标题；
// 而StatefulWidget则是面向可能会改变UI状态的控件，比如有点击反馈的按钮。

//静态页面脚手架
class LastPlayMusicList extends StatelessWidget {
  const LastPlayMusicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //可选值 Scaffold（body只能Scaffold（主界面）用） Container Stack
    return  Container(
            padding: EdgeInsets.only(left: 25,right: 25),
            child:Column(
              children:<Widget>[
                lastPlayMusicCard(image: "lib/assets/images/yequ.jpeg",name:"夜曲",author: "周杰伦",album: "十一月的肖邦",),
                lastPlayMusicCard(image: "lib/assets/images/yequ.jpeg",name:"夜曲",author: "周杰伦",album: "十一月的肖邦",),
                lastPlayMusicCard(image: "lib/assets/images/yequ.jpeg",name:"夜曲",author: "周杰伦",album: "十一月的肖邦",),
                lastPlayMusicCard(image: "lib/assets/images/yequ.jpeg",name:"夜曲",author: "周杰伦",album: "十一月的肖邦",),


              ],
            )


    );
  }
}