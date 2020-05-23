import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePill extends StatefulWidget {
  final IconData icon;
  final String info;
  final Color color;
  ProfilePill({Key key, @required this.icon, @required this.color, @required this.info}) : super(key: key);

  @override
  _ProfilePillState createState() => _ProfilePillState();
}

class _ProfilePillState extends State<ProfilePill> {

 @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);

    return ClipRRect(
      borderRadius: BorderRadius.circular(ScreenUtil().setHeight(17)),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color(0xffd3d3d3)
          ),
          borderRadius: BorderRadius.circular(ScreenUtil().setHeight(17)),
        ),
        height: ScreenUtil().setHeight(34),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(width: ScreenUtil().setWidth(10), height: ScreenUtil().setHeight(10)),
            Icon(this.widget.icon, color: this.widget.color,),
            SizedBox(width: ScreenUtil().setWidth(5), height: ScreenUtil().setHeight(10)),
            Text(this.widget.info),
            SizedBox(width: ScreenUtil().setWidth(10), height: ScreenUtil().setHeight(10)),
          ],
        ),
      ),
    );
  }
}
