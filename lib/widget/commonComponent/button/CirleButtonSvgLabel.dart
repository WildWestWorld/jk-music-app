import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme.dart';

class CircleButtonSvgLabel extends StatelessWidget {
  const CircleButtonSvgLabel({
    Key? key,this.width=44, this.color=primary,this.borderRadius=10,required this.svgPicture,
  }) : super(key: key);

  final double width;
  final double borderRadius;
  final String  svgPicture;


final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: (){}, icon: SvgPicture.asset(svgPicture), label: Text("测试"),
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