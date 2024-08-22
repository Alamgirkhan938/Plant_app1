import 'package:flutter/material.dart';
import 'package:plant_app/Colors/colors.dart';

class Tile1 extends StatelessWidget {
  String Image;
  String Name;
  String Price;
  String Country;
  Tile1({super.key,required this.Image,required this.Name,required this.Price,required this.Country});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 180,
      decoration: BoxDecoration(
           boxShadow: [
             BoxShadow(
                 color: MainColor.withOpacity(0.1),
        blurRadius: 10,
                 offset: Offset(0, 5))],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    Image,
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Row(
              children: [
                Text(
                  Name,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Spacer(),
                Text(Price,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: MainColor.withOpacity(0.5)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(Country,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: MainColor.withOpacity(0.5))),
          )
        ],
      ),
    );
  }
}
