import 'package:flutter/material.dart';
import 'package:jk_music_app/theme.dart';
import 'package:jk_music_app/widget/login_form.dart';
//StatelessWidget面向那些始终不变的UI控件，比如标题栏中的标题；
// 而StatefulWidget则是面向可能会改变UI状态的控件，比如有点击反馈的按钮。
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() {
      return _LoginState();
  }
}

class _LoginState extends State<Login> with TickerProviderStateMixin{
  //声明tabController
  late TabController _tabController;


  //初始化，可以在这里初始化变量，创建某个组件控制中心，例如tab
  @override
  void initState() {
    //调用父级的initState方法
    super .initState();
    //tab的控制中心
    // TabController(length: 2, vsync: this)：2个tab vsync：使用的动画
    _tabController =TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    //Home显示主界面
    return  Scaffold(
      body: Container(
        color:primary,
        //背景板和白色登录框的上下距离
        //设置padding必会使用到的方法 EdgeInsets
        //EdgeInsets的各个方法

        //fromLTRB(double left, double top, double right, double)
        // bottom)：分别指定四个方向的填充。
        // all(double value) : 所有方向均使用相同数值的填充。
        // only({left, top, right ,bottom })：可以设置具体某个方向的填充(可以同时指定多个方向)。
        // symmetric({vertical, horizontal})：用于设置对称方向的填充，vertical指top和bottom，horizontal指left和right。

        padding: const EdgeInsets.only(top: 126),
        //使用MediaQuery.of获取当前设备的信息
        //MediaQuery.of(context).size.width,获取当前设备的的宽度
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          // decoration就是把Container变成一个box，然后我们可以定义一个样式
          //decoration必须传入BoxDecoration这个类
          decoration:const BoxDecoration(
              color: Colors.white,
              //borderRadius必须传入BorderRadius.xx才能使用
              borderRadius:BorderRadius.only(
                //topLeft必须使用Radius.circular才能指定圆弧的大小
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )
          ) ,
          //画完大的白色容器 然后在白色容器中，竖向排列
          child: Column(
            children: <Widget>[
              //Tab的顶部显示
              TabBar(
                //_tabController来自上面我们自定义的Controller
                controller: _tabController,
                //被选中的tab的文字颜色
                //一定要写这个属性，不然看不见文字的颜色
                labelColor: primary,
                //未被选中的tab的文字颜色
                //加个const,因为此时是变量了
                unselectedLabelColor:const Color(0xFF7A869A) ,
                tabs: const <Widget>[
                    Tab(child: Text("登录")),
                    Tab(child: Text("注册")),
                ],
              ),
              //TabView必须要有一个SizeBox/flex布局的盒子
              //Flexible会自动填充 余下的页面
              Flexible(
                flex: 1,
                //点击tab到的页面
                child: TabBarView(
                  controller: _tabController,
                  children: const <Widget>[
                    //引入组件，逐渐来自widget login_form
                    LoginForm(),
                    Center(child: Text("注册"),)
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }


}