import 'package:flutter/material.dart';

class Tile2 extends StatelessWidget {
  String ImagePath;
   Tile2({super.key,required this.ImagePath});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 170,
      width: 230,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
      child:
      Image(image: AssetImage(ImagePath),fit: BoxFit.cover,),
    );
  }
}
