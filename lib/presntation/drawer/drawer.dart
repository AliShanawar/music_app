import 'package:flutter/material.dart';
import 'package:music_app/presntation/resources/color_manager.dart';

class DrawerProfile extends StatefulWidget {
  DrawerProfile({Key? key}) : super(key: key);

  @override
  State<DrawerProfile> createState() => _DrawerProfileState();
}

class _DrawerProfileState extends State<DrawerProfile> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          color: isSelected ? ColorManager.deepPurple : ColorManager.purple,
          'assets/images/drawer_background.png',
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 20, 50, 0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: ColorManager.purple,
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: ColorManager.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                ],
              ),
            ),
            // Positioned(
            //     bottom: 5,
            //     child: Image.asset('assets/images/logo_background.png')),
            isSelected ? secondDrawer() : firstDrawer(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Switch(
                    value: isSelected,
                    onChanged: (bool value) {
                      setState(() {
                        isSelected = value;
                      });

                      print(value);
                    })
              ],
            ),
          ],
        ),
      ],
    );
  }

  firstDrawer() {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.person,
            color: ColorManager.white,
          ),
          title: Text(
            'Profile',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          leading: SizedBox(
            child: Image.asset('assets/images/chat.png'),
          ),
          title: Text(
            'Faq',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: ColorManager.white,
          ),
          title: Text(
            'Settings',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          leading: SizedBox(
            child: Image.asset('assets/images/bug.png'),
          ),
          title: Text(
            'Report a bug',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.exit_to_app,
            color: ColorManager.white,
          ),
          title: Text(
            'Logout',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
      ],
    );
  }

  secondDrawer() {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.person,
            color: ColorManager.white,
          ),
          title: Text(
            'Dashboard',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          leading: SizedBox(
            child: Image.asset('assets/images/chat.png'),
          ),
          title: Text(
            'Create parties',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: ColorManager.white,
          ),
          title: Text(
            'My Parties',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          leading: SizedBox(
            child: Image.asset('assets/images/bug.png'),
          ),
          title: Text(
            'party requests',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.exit_to_app,
            color: ColorManager.white,
          ),
          title: Text(
            'Logout',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
      ],
    );
  }
}
