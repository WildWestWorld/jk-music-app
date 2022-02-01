
import 'package:flutter/material.dart';
//StatelessWidget面向那些始终不变的UI控件，比如标题栏中的标题；
// 而StatefulWidget则是面向可能会改变UI状态的控件，比如有点击反馈的按钮。
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Home显示主界面
    return  Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed:(){
                Navigator.pushNamed(context, '/login');
              },
              child: const Text("跳转到登陆页面"),
          ),
        ),
    );
  }
}