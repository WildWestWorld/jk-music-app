

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jk_music_app/theme.dart';


//该文件是用于login页面里面tab的view
//为了防止页面太混乱所以我们把页面的里面的页面 分离到这里，方便管理

//StatelessWidget面向那些始终不变的UI控件，比如标题栏中的标题；
// 而StatefulWidget则是面向可能会改变UI状态的控件，比如有点击反馈的按钮。
class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> with TickerProviderStateMixin {
  //声明tabController
  late TabController _tabController;


  //初始化，可以在这里初始化变量，创建某个组件控制中心，例如tab
  @override
  void initState() {
    //调用父级的initState方法
    super.initState();
    //tab的控制中心
    // TabController(length: 2, vsync: this)：2个tab vsync：使用的动画
    _tabController = TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    //Home显示主界面
    return Container(
      padding:const EdgeInsets.only(
        left: 35,
        top: 42,
        right: 35
      ),
      child:Column(
        //横轴的对齐方向
        crossAxisAlignment:CrossAxisAlignment.start,
        children: <Widget>[
          const Text("登录",style: TextStyle(fontSize: 24,color: Color(0xFF002251),letterSpacing: 0,fontWeight: FontWeight.w500),),
         //空的sizedBox代替padding
          const SizedBox(height: 7),
          const Text("欢迎来到捷凯音乐",style: TextStyle(fontSize: 14,color: Color(0xFF7A869A),letterSpacing: 0,fontWeight: FontWeight.w400),),
          const SizedBox(height: 35),
          //输入框，账号
          TextFormField(
            decoration: const InputDecoration(

              hintText: '请输入用户名/手机号',
              labelText: '用户名/手机号',
            ),
            onSaved: (String? value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String? value) {
              return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
            },
          ),

          const SizedBox(height: 30,),

          //输入框，密码
          TextFormField(
            decoration: const InputDecoration(

              hintText: '请输入密码',
              labelText: '密码',
            ),
            onSaved: (String? value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String? value) {
              return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
            },
          ),

          const SizedBox(height: 24,),
          const Text("忘记密码?",style: TextStyle(fontSize: 13,color: primary,),),

          const SizedBox(height: 30,),
          //FractionallySizedBox Flex布局的BOX
          FractionallySizedBox(
            //widthFactor: 1 相当于 flex=1
            widthFactor: 1,
            //按钮
            child: ElevatedButton(onPressed:(){}, child: const Text("登录")),
          ),

          const SizedBox(height: 24,),

          Row(
            //主轴设置
            mainAxisAlignment: MainAxisAlignment.center,
            children:const  [
              Text("没有账号?",style: TextStyle(fontSize: 14,color: Color(0xFF7A869A),letterSpacing: 0,fontWeight: FontWeight.w400),),
              Text("立即注册",style: TextStyle(fontSize: 14,color:primary,letterSpacing: 0,fontWeight: FontWeight.w400),)
            ],
          ),
        ],
      ),
    );
  }
}