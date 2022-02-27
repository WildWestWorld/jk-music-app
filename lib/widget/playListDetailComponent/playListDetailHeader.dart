import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme.dart';

//playlist的头部组件
class PlayListDetailHeader extends StatelessWidget {
  const PlayListDetailHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width,margin: EdgeInsets.only(top: 125),
      child: Column(
        children: <Widget>[
          //音乐图片
          Container(margin:EdgeInsets.only(bottom: 20),width: 160,height: 160,child: SvgPicture.asset("lib/assets/images/playlist-cover.svg"),),
          //音乐名
          Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text("杀破狼",style:TextStyle(fontSize: 18,color: primaryColor))
          ),
          Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text("仙剑奇侠传 - 原声大碟",style: TextStyle(fontSize: 12,color: secondaryColor),)
          )

        ],
      ),);
  }
}