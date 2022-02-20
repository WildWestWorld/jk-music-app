
import 'package:flutter/material.dart';

//滑动组件
class SrollableFrame extends StatelessWidget {
  const SrollableFrame({
    Key? key,
    this.children =const <Widget>[]
  }) : super(key: key);

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal 横线滑动
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 20),
      child: Row(

        children: children
      ),

    );
  }
}
