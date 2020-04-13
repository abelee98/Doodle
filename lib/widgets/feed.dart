import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'post.dart';

class Feed extends StatelessWidget {
  const Feed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);

    return Scaffold(body: 
      SafeArea(child: 
        ListView(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(20), right: ScreenUtil().setWidth(20)),
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "doodle",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(20)
                  ),
                )
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(20),),
            Post()
          ],
        ),
      )
    );
  }
}