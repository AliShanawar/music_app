// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:music_app/presntation/resources/assets_manager.dart';
import 'package:music_app/presntation/resources/color_manager.dart';

// class OnBoardingView extends StatefulWidget {
//   @override
//   State<OnBoardingView> createState() => _OnBoardingViewState();
// }

// class _OnBoardingViewState extends State<OnBoardingView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorManager.black,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(100),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 0),
//           child: AppBar(
//             backgroundColor: ColorManager.black,
//             elevation: 0,
//           ),
//         ),
//       ),
//       body: Container(
//         child: Text("hee"),
//       ),
//       drawer: Drawer(
//         backgroundColor: ColorManager.purple,
//         child: ListView(
//           padding: const EdgeInsets.all(0),
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(ImageAssets.drawer_background),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: SizedBox(
//                 child: Image.asset(ImageAssets.logo),
//               ), //BoxDecoration
//               // child: UserAccountsDrawerHeader(
//               //   decoration: BoxDecoration(color: Colors.green),
//               //   accountName: Text(
//               //     "Abhishek Mishra",
//               //     style: TextStyle(fontSize: 18),
//               //   ),
//               //   accountEmail: Text("abhishekm977@gmail.com"),
//               //   currentAccountPictureSize: Size.square(50),
//               //   currentAccountPicture: CircleAvatar(
//               //     backgroundColor: Color.fromARGB(255, 165, 255, 137),
//               //     child: Text(
//               //       "A",
//               //       style: TextStyle(fontSize: 30.0, color: Colors.blue),
//               //     ), //Text
//               //   ), //circleAvatar
//               // ), //UserAccountDrawerHeader
//             ), //DrawerHeader
//             ListTile(
//               leading: Icon(
//                 Icons.person,
//                 color: ColorManager.white,
//               ),
//               title: Text(
//                 'Profile',
//                 style: TextStyle(
//                   color: ColorManager.white,
//                 ),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.book, color: ColorManager.white),
//               title: Text('Faq', style: TextStyle(color: ColorManager.white)),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.workspace_premium, color: ColorManager.white),
//               title:
//                   Text('settings', style: TextStyle(color: ColorManager.white)),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.video_label, color: ColorManager.white),
//               title: Text('Report a bug',
//                   style: TextStyle(color: ColorManager.white)),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: SizedBox(
//                 child: Image.asset(ImageAssets.logout),
//               ),
//               title:
//                   Text('Log out', style: TextStyle(color: ColorManager.white)),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       //Deawer
//     );
//   }
// }

class OnBoardingView extends StatelessWidget {
  Widget singalProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network('https://i.imgur.com/w3duR07.jpg'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fresh Herbs',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$10/500g',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 5),
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(children: [
                              Expanded(
                                  child: Text(
                                '50 grams',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )),
                              Center(
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Color(0xFFd6b738),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.remove,
                                    color: Color(0xFFd6b738), size: 20),
                                Text('1'),
                                Icon(Icons.add,
                                    color: Color(0xFFd6b738), size: 20),
                              ]),
                        )),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
        leading: Icon(
          icon,
          size: 32,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.black54, fontSize: 18),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xFFd6b738),
          child: ListView(children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('welcome'),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                          height: 30,
                          // ignore: deprecated_member_use
                          child: ElevatedButton(
                            child: Text('login'),
                            onPressed: () {},
                          )),
                    ],
                  )
                ],
              ),
            ),
            listTile(icon: Icons.home, title: 'Home'),
            listTile(icon: Icons.shop_2_outlined, title: 'Shop'),
            listTile(icon: Icons.person_outline, title: 'My Profile'),
            listTile(
                icon: Icons.notification_add_outlined, title: 'Notifications'),
            listTile(icon: Icons.star_outline, title: 'Rating'),
            listTile(icon: Icons.favorite_outline, title: 'wishlist'),
            listTile(icon: Icons.copy_outlined, title: 'Raise a Request'),
            listTile(icon: Icons.format_quote_outlined, title: 'FAQ'),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('contact us'),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text('contact us'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('+9233456789')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text('Mail us'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('test@gmail.com')
                        ],
                      ),
                    ),
                  ]),
            )
          ]),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd6d181),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Color(0xffd6d181),
              radius: 12,
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xFFd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            // Container(
            //   height: 150,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //         fit: BoxFit.cover,
            //         image: NetworkImage(
            //             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU'),
            //       ),
            //       borderRadius: BorderRadius.circular(10)),
            //   child: Row(children: [
            //     Expanded(
            //       flex: 2,
            //       child: Container(
            //         child: Column(children: [
            //           Padding(
            //               padding: const EdgeInsets.only(right: 170),
            //               child: Container(
            //                 height: 50,
            //                 width: 100,
            //                 decoration: BoxDecoration(
            //                   color: Color(0xFFd6b738),
            //                   borderRadius: BorderRadius.only(
            //                     bottomLeft: Radius.circular(50),
            //                     bottomRight: Radius.circular(50),
            //                   ),
            //                 ),
            //                 child: Text('Food',
            //                     style: TextStyle(
            //                         fontSize: 20,
            //                         color: Colors.white,
            //                         shadows: [
            //                           BoxShadow(
            //                             blurRadius: 10,
            //                             color: Colors.green.shade900,
            //                             offset: Offset(2, 2),
            //                           )
            //                         ])),
            //               )),
            //           Text(
            //             '30% off',
            //             style: TextStyle(
            //                 fontSize: 40,
            //                 color: Colors.green[100],
            //                 fontWeight: FontWeight.bold),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 20),
            //             child: Text(
            //               'on all food',
            //               style: TextStyle(
            //                 color: Colors.white,
            //               ),
            //             ),
            //           ),
            //         ]),
            //       ),
            //     ),
            //     Expanded(child: Container())
            //   ]),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs Seasoning'),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs Seasoning'),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
