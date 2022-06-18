// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:music_app/presntation/drawer/drawer.dart';
import 'package:music_app/presntation/resources/color_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> drawerKey = new GlobalKey<ScaffoldState>();
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: DrawerProfile(),
      backgroundColor: ColorManager.background,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 240),
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorManager.shadeBlue2),
                    child: IconButton(
                        onPressed: () {
                          drawerKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notification_important,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Good Evening',
                  style: TextStyle(color: ColorManager.white, fontSize: 22),
                ),
                Text(
                  'John Deo',
                  style: TextStyle(color: ColorManager.lightGrey, fontSize: 14),
                ),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: isSelected
                                      ? ColorManager.purple
                                      : ColorManager.shadeBlue2,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/music.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Music',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: isSelected
                                      ? ColorManager.purple
                                      : ColorManager.shadeBlue2,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/coffe.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Music',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Clubs',
                    style: TextStyle(fontSize: 22, color: ColorManager.white),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 16, color: ColorManager.purple),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 220,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: ColorManager.shadeBlue2,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/dummy_2.png'),
                                    height: 100,
                                    width: 165,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Party neon',
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16, right: 8),
                                      // child: Container(
                                      //   decoration: BoxDecoration(
                                      //     color: ColorManager.datecolor,
                                      //     borderRadius:
                                      //         BorderRadius.circular(11),
                                      //   ),
                                      //   child: Center(
                                      //     child: Column(
                                      //       children: [
                                      //         IconButton(
                                      //           icon: Icon(
                                      //             Icons.shopping_cart,
                                      //             color: Colors.white,
                                      //           ),
                                      //           onPressed: () {},
                                      //         ),
                                      //       ],
                                      //     ),
                                      //   ),
                                      // ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    'San Francisco',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Djs',
                    style: TextStyle(fontSize: 22, color: ColorManager.white),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 16, color: ColorManager.purple),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 220,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: ColorManager.shadeBlue2,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/dummy_2.png'),
                                    height: 100,
                                    width: 165,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Party neon',
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16, right: 8),
                                      // child: Container(
                                      //   decoration: BoxDecoration(
                                      //     color: ColorManager.datecolor,
                                      //     borderRadius:
                                      //         BorderRadius.circular(11),
                                      //   ),
                                      //   child: Center(
                                      //     child: Column(
                                      //       children: [
                                      //         IconButton(
                                      //           icon: Icon(
                                      //             Icons.shopping_cart,
                                      //             color: Colors.white,
                                      //           ),
                                      //           onPressed: () {},
                                      //         ),
                                      //       ],
                                      //     ),
                                      //   ),
                                      // ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    'San Francisco',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Drinks',
                    style: TextStyle(fontSize: 22, color: ColorManager.white),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 16, color: ColorManager.purple),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 220,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: ColorManager.shadeBlue2,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/dummy_2.png'),
                                    height: 100,
                                    width: 165,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Party neon',
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16, right: 8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: ColorManager.datecolor,
                                          borderRadius:
                                              BorderRadius.circular(11),
                                        ),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              IconButton(
                                                icon: Icon(
                                                  Icons.shopping_cart,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    'San Francisco',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
