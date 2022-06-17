// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade700,
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
                        color: Colors.purple),
                    child: IconButton(
                        onPressed: () {},
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
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  'asjads',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
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
                                      ? Colors.purple.shade700
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.music_note),
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
                                      ? Colors.purple.shade700
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.music_note),
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
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 16, color: Colors.purpleAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 180,
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
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/coffe.png'),
                                  height: 80,
                                  width: 140,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Party',
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'asdjkl',
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
                children: [
                  Text(
                    'Djs',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 16, color: Colors.purpleAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 180,
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
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('image/hexa.png'),
                                  height: 80,
                                  width: 140,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Party',
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'asdjkl',
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
                    'Djs',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 16, color: Colors.purpleAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 180,
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
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('image/hexa.png'),
                                  height: 80,
                                  width: 140,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Party',
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'asdjkl',
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
            ],
          ),
        ),
      ),
    );
  }
}
