import 'package:assistant/painters_and_clips/paint_1.dart';
import 'package:assistant/utils/consts.dart';
import 'package:assistant/widgets/the_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'home_page.dart';

class CodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              right: 0,
              child: CustomPaint(
                painter: ShapesPainter(
                  color: Colors.orange,
                  raduis: 160,
                ),
                child: Container(),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: CustomPaint(
                painter: ShapesPainter(
                  shapeCenter: Offset(0, 0),
                  raduis: 110,
                ),
                child: Container(),
              ),
            ),
            Container(
              width: size.width,
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil().setHeight(45),
                  ),
                  Image.asset(
                    'assets/images/app_icon.png',
                    width: size.width * .8,
                    height: size.height * .18,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(45),
                  ),
                  SelectableText(
                    'كود المريض: 14582652589',
                    enableInteractiveSelection: true,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                  ),
                  Text(
                    'رقم المريض: 30',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(45),
                  ),
                  TheButton(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => HomePage(),
                        ),
                      );
                    },
                    borderRaduis: 0,
                    verticalPadding: 10,
                    title: 'انهاء'.toUpperCase().replaceAll(' ', '  '),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(100),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
