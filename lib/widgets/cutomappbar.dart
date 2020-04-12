import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: ScreenUtil().setWidth(35),
            width: ScreenUtil().setWidth(35),
            child: Image.asset("assets/icons/backArrow.png"),
          ),
        ),
        Text(
          "Forgot Password?",
          style: TextStyle(
            fontSize: ScreenUtil().setSp(10),
          ),
        )
      ],
    );
  }
}