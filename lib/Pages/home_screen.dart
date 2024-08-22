import 'package:flutter/material.dart';
import 'package:plant_app/Colors/colors.dart';
import 'package:plant_app/Widget/tile2.dart';
import 'package:plant_app/Widget/tile_1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/flower.png',
                  color: MainColor,
                ),
                label: 'flower'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/heart-icon.png',
                  color: MainColor,
                ),
                label: 'favourite'),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/user-icon.png',
                color: MainColor,
              ),
              label: 'person',
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                    child: Container(
                      height: 200,
                      width: double.maxFinite,
                      color: MainColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Image(
                      image: AssetImage('assets/menu.png'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 80, right: 20, left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Hi Uishopy!',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Spacer(),
                        Image(image: AssetImage('assets/logo.png'))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 170, left: 30, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: MainColor.withOpacity(0.2),
                                blurRadius: 5,
                                offset: Offset(0, 10))
                          ]),
                      child: Row(
                        children: [
                          Container(
                              height: 55,
                              width: 244,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, bottom: 12),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      label: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, top: 10),
                                        child: Text(
                                          'Search',
                                          style: TextStyle(
                                              color: MainColor.withOpacity(0.5),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20),
                                        ),
                                      ),
                                      border: InputBorder.none),
                                ),
                              )),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search,
                              color: MainColor,
                            ),
                          )
                        ],
                      ),
                      height: 55,
                      width: double.infinity,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Recommended',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 30,
                              width: 60,
                              color: MainColor,
                              child: Center(
                                  child: Text(
                                'More',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              )),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 290,
                      width: double.maxFinite,
                      color: Colors.white,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Tile1(
                              Image: 'assets/image1.png',
                              Name: 'SAMANTHA',
                              Price: '\$400',
                              Country: 'RUSSIA'),
                          SizedBox(
                            width: 20,
                          ),
                          Tile1(
                              Image: 'assets/image2.png',
                              Name: 'ANGELICA',
                              Price: '\200',
                              Country: 'AMERICA'),
                          SizedBox(
                            width: 20,
                          ),
                          Tile1(
                              Image: 'assets/image3.png',
                              Name: 'SAMANTHA',
                              Price: '\$450',
                              Country: 'CHINA'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Featured Plants',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 30,
                              width: 60,
                              color: MainColor,
                              child: Center(
                                  child: Text(
                                'More',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              )),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 170,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Tile2(ImagePath: 'assets/bottom1.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Tile2(ImagePath: 'assets/bottom2.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Tile2(ImagePath: 'assets/img1.png')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
