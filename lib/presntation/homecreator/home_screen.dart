import 'package:flutter/material.dart';
import 'package:music_app/presntation/homecreator/home_setting.dart';
import 'package:music_app/presntation/resources/color_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int seletedPage = 0;
  List page = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[seletedPage],
      floatingActionButton: GestureDetector(
        onTap: () => print('tapped'),
        child: Stack(
          children: [
            CustomPaint(
              size: Size(50, (50 * 1).toDouble()),
              painter: RPSCustomPainter(),
            ),
            Positioned(
                bottom: 10,
                left: 5,
                right: 5,
                top: 10,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      bottomNavigationBar: buildNavBar(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  buildNavBar(BuildContext context) {
    return BottomAppBar(
      color: ColorManager.shadeBlue2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: InkWell(
              child: Image(
                height: 40,
                image: AssetImage(
                  'assets/images/home.png',
                ),
                color:
                    seletedPage == 0 ? ColorManager.white : ColorManager.white,
              ),
              onTap: () {
                setState(() {
                  seletedPage = 0;
                });
              },
            ),
          ),
          InkWell(
            child: Expanded(
              child: Image(
                height: 40,
                image: AssetImage(
                  'assets/images/Fill.png',
                ),
                color:
                    seletedPage == 1 ? ColorManager.white : ColorManager.white,
              ),
            ),
            onTap: () {
              setState(() {
                seletedPage = 1;
              });
            },
          ),
          Expanded(child: Text('')),
          Expanded(
              child: InkWell(
            child: Image(
              height: 40,
              image: AssetImage(
                'assets/images/heart.png',
              ),
              color: seletedPage == 2 ? ColorManager.white : ColorManager.white,
            ),
            onTap: () {
              setState(() {
                seletedPage = 2;
              });
            },
          )),
          Expanded(
            child: InkWell(
              child: Image(
                height: 30,
                image: AssetImage(
                  'assets/images/profile.png',
                ),
                color:
                    seletedPage == 3 ? ColorManager.white : ColorManager.white,
              ),
              onTap: () {
                setState(() {
                  seletedPage = 3;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7500000, size.height * 0.08333333);
    path_0.lineTo(size.width, size.height * 0.5208333);
    path_0.lineTo(size.width * 0.7500000, size.height * 0.9583333);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.9583333);
    path_0.lineTo(0, size.height * 0.5208333);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.08333333);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.purple;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
