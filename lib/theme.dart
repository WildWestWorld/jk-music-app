//该页面是用于存放或者更改主题色
import 'package:flutter/material.dart';


const int _bluePrimaryValue =0xFF0041C4;
//在原来的颜色库中新增MaterialColor  primary颜色，
//MaterialColor(x,y) x要的参数是默认的颜色，y要的是一个<int,Color>的一个数组 说白了就是需要一个放颜色梯度的数组
const MaterialColor primary = MaterialColor(_bluePrimaryValue, <int,Color>{
  50: Color(0xFFE7E9F9),
  100: Color(0xFFC2C8F1),
  200: Color(0xFF98A4E7),
  300: Color(0xFF6C81DE),
  400: Color(0xFF4765D7),
  500: Color(0xFF0C49CF),
  600: Color(_bluePrimaryValue),
  700: Color(0xFF003788),
  800: Color(0xFF002CAD),
  900: Color(0xFF00189A),
},
);

//自定义Tabbar的主题
//定义完了，记得去main里面去引入
const TabBarTheme tabBarTheme =TabBarTheme(
  //被选中的tab的文字颜色
  //一定要写这个属性，不然看不见文字的颜色
  labelColor: primary,
  //未被选中的tab的文字颜色
  //加个const,因为此时是变量了
  unselectedLabelColor:Color(0xFF7A869A) ,
);
const Color primaryColor =Color(0xFF002150);
const Color secondaryColor =Color(0xFF7A869A);

const Color btnSecondaryColor=Color(0xFFE5ECF9);

const TextStyle primaryText =TextStyle(fontSize: 16,color: Color(0xFF002150));
const TextStyle secondaryText =TextStyle(fontSize: 12,color: Color(0xFF7A869A));


