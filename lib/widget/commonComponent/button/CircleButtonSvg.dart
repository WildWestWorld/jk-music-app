import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme.dart';

class CircleButtonSvg extends StatelessWidget {
  const CircleButtonSvg({
    Key? key,this.width=44,this.color=primary,this.borderRadius=10,this.svgPicture=""
  }) : super(key: key);

  final double width;
  final double borderRadius;
  final String svgPicture;


  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child:SvgPicture.asset(svgPicture),
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