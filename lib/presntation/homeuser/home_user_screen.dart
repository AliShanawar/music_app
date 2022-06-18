import 'package:flutter/material.dart';
import 'package:music_app/presntation/drawer/drawer.dart';
import 'package:music_app/presntation/resources/color_manager.dart';

class HomeUserScreen extends StatefulWidget {
  HomeUserScreen({Key? key}) : super(key: key);

  @override
  State<HomeUserScreen> createState() => _HomeUserScreenState();
}

class _HomeUserScreenState extends State<HomeUserScreen> {
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
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/round_1.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Party neon',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: ColorManager.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Text('4.5',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: ColorManager.white)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Star.png'),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'San Francisco',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ColorManager.lightGrey),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          'Follow',
                                          style: TextStyle(
                                              color: ColorManager.white,
                                              fontSize: 12,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      height: 30,
                                      width: 79,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            ColorManager.gradient,
                                            ColorManager.purple
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
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
                height: 230,
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
                                      padding: const EdgeInsets.only(top: 16),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: ColorManager.datecolor,
                                          borderRadius:
                                              BorderRadius.circular(11),
                                        ),
                                        height: 43,
                                        width: 40,
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'DM Sans',
                                                    color: ColorManager.white),
                                              ),
                                              Text(
                                                'jun',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'DM Sans',
                                                    color: ColorManager.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
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
