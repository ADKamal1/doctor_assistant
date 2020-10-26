import 'package:assistant/pages/home_page.dart';
import 'package:assistant/painters_and_clips/paint_1.dart';
import 'package:assistant/utils/consts.dart';
import 'package:assistant/widgets/TheTextFormFeild.dart';
import 'package:assistant/widgets/the_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class EnterPage extends StatefulWidget {
  @override
  _EnterPageState createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              bottom: 0,
              right: 0,
              child: CustomPaint(
                painter: ShapesPainter(),
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
            SingleChildScrollView(
              physics: scrollPhysics,
              child: Container(
                height: size.height,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(13),
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
                    TheTextFormField(
                      borderRaduis: 3,
                      keyboardType: TextInputType.text,
                      hint: 'كود الدكتور'.toUpperCase().replaceAll(' ', '  '),
                      backgroundColor: Colors.orange.withOpacity(.5),
                      width: size.width * .9,
                      prefixIcon: Icon(
                        Icons.code,
                        color: mainColor,
                      ),
                    ),
                    TheTextFormField(
                      keyboardType: TextInputType.number,
                      borderRaduis: 3,
                      backgroundColor: Colors.orange.withOpacity(.5),
                      hint: 'كلمة المرور'.toUpperCase().replaceAll(' ', '  '),
                      width: size.width * .9,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: mainColor,
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(18),
                    ),
                    TheButton(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => HomePage(),
                          ),
                        );
                      },
                      borderRaduis: 0,
                      verticalPadding: 10,
                      title: 'دخول'.toUpperCase().replaceAll(' ', '  '),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 45,
              left: 5,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
