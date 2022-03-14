
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jk_music_app/widget/commonComponent/button/CircleButton.dart';
import 'package:jk_music_app/widget/commonComponent/button/CirleButtonSvgLabel.dart';
import 'package:jk_music_app/widget/homeComponent/lastPlayMusicList.dart';
import 'package:jk_music_app/widget/playListDetailComponent/playListDetailHeader.dart';

import '../../theme.dart';



//歌曲详情页
class PlayListDetail extends StatefulWidget {
  const PlayListDetail({Key? key}) : super(key: key);

  @override
  _PlayListDetailState createState() => _PlayListDetailState();
}

class _PlayListDetailState extends State<PlayListDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: <Widget>[
              //背景线条图片
              Container(width: 275,height: 235,child: SvgPicture.asset("lib/assets/images/playlist-back-image.svg"),),
              //整个页面往下的一个主体
              Column(
                children: <Widget>[

                //总的音乐图片+文字的大容器
                //margin: EdgeInsets.only(top: 125)代表的是离页面最上方的距离
                  PlayListDetailHeader(),
                //装按钮的大容器
                Container(
                  margin: EdgeInsets.only(bottom: 34),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,

                   children: <Widget>[
                     CircleButton(width: 221,text: "播放",),
                     SizedBox(width: 10,),

                     CircleButtonSvgLabel(svgPicture:"lib/assets/icons/down-load.svg",width: 44,color: btnSecondaryColor,borderRadius:10),


                ],),

                ),

                  //音乐盘组件
                  LastPlayMusicList()
              ],)
            ],
          ),
        )
    );
  }
}




