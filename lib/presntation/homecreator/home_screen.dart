import 'package:flutter/material.dart';
import 'package:music_app/presntation/homecreator/home_setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
              //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
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
      color: Colors.purple.shade700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: IconButton(
              enableFeedback: false,
              icon: Icon(
                Icons.home,
                color: seletedPage == 0 ? Colors.red : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  seletedPage = 0;
                });
              },
            ),
          ),
          Expanded(
            child: IconButton(
              enableFeedback: false,
              icon: Icon(
                Icons.show_chart,
                color: seletedPage == 1 ? Colors.red : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  seletedPage = 1;
                });
              },
            ),
          ),
          Expanded(child: Text('')),
          Expanded(
            child: IconButton(
              enableFeedback: false,
              icon: Icon(
                Icons.tab,
                color: seletedPage == 2 ? Colors.red : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  seletedPage = 2;
                });
              },
            ),
          ),
          Expanded(
            child: IconButton(
              enableFeedback: false,
              icon: Icon(
                Icons.settings,
                color: seletedPage == 3 ? Colors.red : Colors.black,
              ),
              onPressed: () {
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

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
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
