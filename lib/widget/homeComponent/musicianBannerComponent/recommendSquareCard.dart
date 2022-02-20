


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendSquareCard extends StatelessWidget{
  const RecommendSquareCard({Key? key,required this.name,required this.description,required this.image}) : super(key: key);
   final String name;
  final String description;
  final String image;
  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(right: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Container(width: 120,height: 120,clipBehavior: Clip.hardEdge,margin: const EdgeInsets.only(bottom: 10),
             decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
             child: Image.asset(image),
           ),
           Text(name,style:TextStyle(fontSize: 16,color: Color(0xFF002150))),
           const SizedBox(height: 5,),
           Text(description,style: TextStyle(color: Color(0xFF7A869A),fontSize: 12),),
         ],
        )
      );
  }

}