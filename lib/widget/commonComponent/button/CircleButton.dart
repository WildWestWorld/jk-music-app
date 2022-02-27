import 'package:flutter/material.dart';

import '../../../theme.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,required this.name
  }) : super(key: key);

final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Text(name),
      //设置按钮的样式
      style: ButtonStyle(
        //按钮的颜色
        backgroundColor: MaterialStateProperty.all<Color>(primary),
        //按钮的大小
        fixedSize:MaterialStateProperty.all<Size>(Size(221, 44)),
        //倒圆角
        shape:MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),);
  }
}