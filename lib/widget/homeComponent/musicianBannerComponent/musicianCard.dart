
import 'package:flutter/material.dart';
//StatelessWidget面向那些始终不变的UI控件，比如标题栏中的标题；
// 而StatefulWidget则是面向可能会改变UI状态的控件，比如有点击反馈的按钮。

//音乐人card
class MusicianCard extends StatelessWidget {
  const MusicianCard({Key? key,required this.name,required this.image,required this.category}) : super(key: key);

    final String name,image,category;
  @override
  Widget build(BuildContext context) {
    //可选值 Scaffold（body只能Scaffold用） Container Stack
    return Container(
          margin: const EdgeInsets.only(right: 25,bottom: 10),
          child: Column(
            children:<Widget> [

              Container(
                  width:120,height:120,
                  // clipBehavior: Clip.hardEdge, 隐藏掉图片超出边界的部分
                  clipBehavior: Clip.hardEdge,
                  decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(120))),
                  child:Image.asset(image)),
              Text(name,style:TextStyle(fontSize: 16,color: Color(0xFF002150))),
              const SizedBox(height: 5,),
              Text(category,style: TextStyle(color: Color(0xFF7A869A),fontSize: 12),),
            ],
          )

    );

  }
}