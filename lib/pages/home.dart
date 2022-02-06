import 'package:flutter/material.dart';
import 'package:jk_music_app/theme.dart';

//StatelessWidget面向那些始终不变的UI控件，比如标题栏中的标题；
// 而StatefulWidget则是面向可能会改变UI状态的控件，比如有点击反馈的按钮。
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Home显示主界面
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 44),
        width: MediaQuery.of(context).size.width,
        height: 240,
        //decoration 设置Container的格式
        decoration: const BoxDecoration(
          color: primary,
          //Radius.circular 倒个大圆角
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 19,bottom: 19,right: 25,left: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               //左边显示的文字
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   // Colors.white.withOpacity(0.5) 透明度
                 Text("晚上好,",style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 16),),
                 const SizedBox(height: 5,),
                 const Text("捷凯",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),],
               ),

               //flex布局的一个容器
               const Spacer(flex: 1,),

               //右边显示的图标
               Row(children: <Widget>[
                 const Icon(Icons.doorbell,color: Colors.white,size: 20,),
                 const SizedBox(width: 18,),
                 Container(width: 38,height: 38,
                   decoration: BoxDecoration(color: Colors.white, border: Border.all(width: 2.0, color: Colors.yellow),borderRadius: BorderRadius.circular(19),image: const DecorationImage(image: AssetImage('lib/assets/images/1.jpg'),fit: BoxFit.cover),),
                 ),

                 //备用的圆形头像
                 // const CircleAvatar(
                 //   //头像半径
                 //   radius: 19,
                 //   //头像图片
                 //   backgroundImage: AssetImage('lib/assets/images/1.jpg'),
                 // ),

               ],
               )

          ],
        )
        ),
      ),
    );
  }
}
