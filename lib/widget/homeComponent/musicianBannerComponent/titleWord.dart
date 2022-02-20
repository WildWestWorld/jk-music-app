import 'package:flutter/material.dart';

import '../../../theme.dart';

//
class TitleWord extends StatelessWidget {
  const TitleWord({
    Key? key,
    required this.title,
    required this.more,
  }) : super(key: key);

  final String title;
  final String more;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25,right: 25),
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[Text(title,style: TextStyle(fontSize: 22,color: Color(0xFF002150)),),Spacer(),Text(more,style: TextStyle(fontSize: 14,color: primary)),],
      ),
    );
  }
}