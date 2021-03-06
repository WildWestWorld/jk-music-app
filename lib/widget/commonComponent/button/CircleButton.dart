import 'package:flutter/material.dart';

import '../../../theme.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,this.width=44,this.color=primary,this.borderRadius=10,this.text=""
  }) : super(key: key);

final double width;
final double borderRadius;
final String text;


final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child:Text(text),
      //设置按钮的样式
      style: ButtonStyle(

        //按钮的颜色
        backgroundColor: MaterialStateProperty.all<Color>(color),
        //按钮的大小
        fixedSize:MaterialStateProperty.all<Size>(Size(width, 44)),
        //倒圆角
        shape:MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(borderRadius)))),
      ),);
  }
}