import 'package:flutter/material.dart';
import 'package:jk_music_app/api/hello.dart';


//主函数
//runApp（） 运行app
//const MyApp()实例化app
void main() {
  runApp(const JKMusic());
}
//使用rename就可以更改app的名字
class JKMusic extends StatelessWidget {
  const JKMusic({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //在手机中安装app的名字
      title: '捷凯音乐',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.


        //当前主题色
        primarySwatch: Colors.blue,
      ),

      //home页面显示的标题
      home: const MyHomePage(title: '捷凯音乐盒'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//相当于vue里面的JavaScript
class _MyHomePageState extends State<MyHomePage> {

  //自定义数据
  //这里就是放data的位置
  int _counter = 0;
  String message ="捷凯音乐盒";

  //样式
  //按钮的样式
  final ButtonStyle buttonStyle =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));



  //函数
  //点击按钮会触发该函数
  void _incrementCounter() {
    //此处的setState相当于小程序的里面的this.setdata

    setState(() {
      _counter++;
    });

  }
  void _fetchData(){
    //此处的sayHello方法来自api文件中的hello.dart
    //因为是future对象所以也可以用then的方法
   sayHello().then((value) => {

     //flutter特色设置值
     setState(() {
    message=value;
    })


   });
  }



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.


    //app显示的主界面
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      //center 意味着居中布局
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        //colunm意味着是纵向排列的
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          //mainAxisAlignment：主轴是怎么样对齐的
          mainAxisAlignment: MainAxisAlignment.center,
          //widget相当于数组，也就是说我们加多少内容都是可以的
          children: <Widget>[
            Text(message,style:Theme.of(context).textTheme.headline5),


            ElevatedButton(
              style: buttonStyle,
              onPressed:_fetchData,
              child: const Text('请求数据'),
            ),

            //空盒子用于把两个组件分隔开
            const SizedBox(height: 30),

            const Text(
              '当前点击次数为：',
            ),
            Text(
              //$=获取data里面的值
              '$_counter',
              //style 文字的样式
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed =click 就是个点击事件
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        //button里面的图标
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
