



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../theme.dart';

class lastPlayMusicCard extends StatelessWidget{
  const lastPlayMusicCard({Key? key,required this.image,required this.name,required this.author,required this.album}) : super(key: key);

  final String image;
  final String name;
  final String author;
  final String album;


  @override
  Widget build(BuildContext context) {

     return Container(
       margin: EdgeInsets.only(bottom: 20),
       child: Row(
       children: <Widget>[
         //CD碟片样式
         Container(
           child: Row(
             children: <Widget>[
               Stack(
                   children: [
                     Container(
                       width: 64,height: 64,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(64),image:DecorationImage(image:AssetImage(image), fit: BoxFit.cover)),
                     ),
                     Positioned(
                         left: 24,
                         top: 24,
                         child: Container(
                           width: 16,height: 16,
                           decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
                         ))
                   ]),

             ],
           ),
         ),
         //歌曲的信息以及样式
         Container(
           margin: EdgeInsets.only(left: 15),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Text(name,style: TextStyle(fontSize: 16,color: Color(0xFF002150)),),
               Text(album+" - "+author,style: secondaryText,)
             ],
           ),
         )
       ],
   ),
     );

  }

}

