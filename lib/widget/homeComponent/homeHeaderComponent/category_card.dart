
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//home头部的图片滑动图 用于跳转各个分类
class CategoryCard extends StatelessWidget {
  //required 意味着我们必须传入的参数
  const CategoryCard({Key? key, required this.title, required this.description , required this.image,  required this.onPress}) : super(key: key);

  final String title,description,image;
  //定义 onPress 为函数
  //定义函数的两种方式 Function/VoidCallback

  //Function 有返回值，无法适用于GestureDetector的onTap
  //VoidCallback 无返回值，可以使用于GestureDetector的onTap

  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 140,
        height: 220,
        // clipBehavior: Clip.hardEdge, 隐藏掉图片超出边界的部分
        clipBehavior: Clip.hardEdge,
        //倒圆角，虽然我们图片已经自带圆角，但是也许以后放的图片不是圆角的形式。所以我们为了样式统一，给这个card倒个圆角
        //这个decoration会直接作用在container上面
        decoration: const BoxDecoration(
            borderRadius:
            BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))),
        margin:const EdgeInsets.only(right: 20),
        //GestureDetector 处理手势 用于处理点击函数
        // onTap 的范围就是GestureDetector包含范围
        child:GestureDetector(
          onTap: onPress,
          child: Stack(
            children: <Widget>[
              Image.asset(image),
              Positioned(
                left: 15,
                top: 20,
                child:Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[Text(title,style:  const TextStyle(color: Colors.white,fontSize: 18,height: 1.67),),Text(description,style:  TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 14,height: 1.21))],
              ),
              )
            ],
          ),
        )
      );

  }
}