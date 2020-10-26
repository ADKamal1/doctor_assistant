import 'package:assistant/pages/height_gender_weight_page.dart';
import 'package:assistant/painters_and_clips/paint_1.dart';
import 'package:assistant/utils/consts.dart';
import 'package:assistant/widgets/TheTextFormFeild.dart';
import 'package:assistant/widgets/the_buttons.dart';
import 'package:assistant/widgets/weight_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class BaseInfoPage extends StatefulWidget {
  @override
  _BaseInfoPageState createState() => _BaseInfoPageState();
}

class _BaseInfoPageState extends State<BaseInfoPage> {
  bool sugre = false;
  bool pressure = false;

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
                child: Container(
                  height: size.height * .5,
                ),
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
                child: Container(
                  height: size.height * .5,
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                physics: scrollPhysics,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: ScreenUtil().setHeight(70),
                      ),
                      Text('انشاء حساب مريض جديد'),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TheTextFormField(
                              borderRaduis: 3,
                              keyboardType: TextInputType.text,
                              hint: 'الاسم الثاني'
                                  .toUpperCase()
                                  .replaceAll(' ', '  '),
                              backgroundColor: Colors.orange.withOpacity(.5),
                              width: size.width * .9,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(10),
                          ),
                          Expanded(
                            child: TheTextFormField(
                              keyboardType: TextInputType.text,
                              borderRaduis: 3,
                              backgroundColor: Colors.orange.withOpacity(.5),
                              hint: 'الاسم الاول'
                                  .toUpperCase()
                                  .replaceAll(' ', '  '),
                              width: size.width * .9,
                            ),
                          ),
                        ],
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: CheckboxListTile(
                          value: sugre,
                          title: Text('مريض بالسكر ؟'),
                          subtitle:
                              Text(sugre ? 'مريض بالسكر' : 'ليس مريضا بالسكر'),
                          onChanged: (bool val) {
                            sugre = val;
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(18),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: CheckboxListTile(
                          value: pressure,
                          title: Text('مريض بالضغط ؟'),
                          subtitle: Text(
                              pressure ? 'مريض بالضغط' : 'ليس مريضا بالضغط'),
                          onChanged: (bool val) {
                            pressure = val;
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(15),
                      ),
                      Container(
                        width: size.width,
                        height: size.height * .25,
                        child: WeightCard(
                          initialValue: 20,
                          valuesHeight: 60,
                          title: 'العمر',
                          value: '(سنة)',
                          onChage: (int val) {},
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(50),
                      ),
                      TheButton(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => HeightGenderWeightPage(),
                            ),
                          );
                        },
                        borderRaduis: 0,
                        verticalPadding: 10,
                        title: 'التالي'.toUpperCase().replaceAll(' ', '  '),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(50),
                      ),
                    ],
                  ),
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
