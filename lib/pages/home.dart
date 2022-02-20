import 'package:flutter/material.dart';
import 'package:jk_music_app/theme.dart';
import 'package:jk_music_app/widget/homeComponent/homeHeader.dart';
import 'package:jk_music_app/widget/homeComponent/lastPlayMusicList.dart';
import 'package:jk_music_app/widget/homeComponent/musicianBanner.dart';
import 'package:jk_music_app/widget/homeComponent/lastPlayMusicListComponent/lastPlayMusicCard.dart';
import 'package:jk_music_app/widget/homeComponent/musicianBannerComponent/musicianCard.dart';
import 'package:jk_music_app/widget/homeComponent/musicianBannerComponent/recommendSquareCard.dart';
import 'package:jk_music_app/widget/homeComponent/musicianBannerComponent/srollableFrame.dart';
import 'package:jk_music_app/widget/homeComponent/musicianBannerComponent/titleWord.dart';
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
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              //自定义组件，在widget/homeComponent文件夹里面
              HomeHeader(),
              SizedBox(height: 40,),
              //同上
              MusicianBanner(title: "流行音乐人",),

              SizedBox(height: 40,),
              TitleWord(title: "推荐歌单",more: "更多歌单",),
              SrollableFrame(children: <Widget>[
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
              ],),

              SizedBox(height: 40,),
              TitleWord(title: "推荐专辑",more: "更多专辑",),
              SrollableFrame(children: <Widget>[
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
              ],),

              SizedBox(height: 40,),
              TitleWord(title: "推荐电台",more: "",),
              SrollableFrame(children: <Widget>[
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
                RecommendSquareCard(name:"狂想曲" ,description: "释放心中的怒火",image: "lib/assets/images/album.png",),
              ],),

              SizedBox(height: 40,),
              TitleWord(title: "最近播放",more: "更多",),
              LastPlayMusicList(),


            ],
      //Stack 的作用就是让绝对定位

          ),
        )
    );
  }
}
