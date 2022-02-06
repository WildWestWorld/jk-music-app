import 'package:flutter/material.dart';
import 'package:jk_music_app/api/hello.dart';
import 'package:jk_music_app/pages/home.dart';
import 'package:jk_music_app/pages/login.dart';
import 'package:jk_music_app/theme.dart';


//主函数
//runApp（） 运行app
//const MyApp()实例化app
void main() {
  runApp(const JKMusic());
}
//使用rename就可以更改app的名字
class JKMusic extends StatelessWidget {
  const JKMusic({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //在手机中安装app的名字
      title: '捷凯音乐',
      //debugShowCheckedModeBanner :false  =去掉右上角的DEBUG标签
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //当前主题色
        primarySwatch: primary,
        //引入自定义的tabBar主题
        tabBarTheme: tabBarTheme,
      ),
      //默认打开的页面
      initialRoute: '/',
      routes: {
        //Router中引入Home页面，路径为'/'
        '/':(context)=>const Home(),
        '/login':(context)=>const Login()
      },

    );
  }
}

