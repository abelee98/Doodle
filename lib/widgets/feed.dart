import 'package:doodle/models/postData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'post.dart';

class Feed extends StatelessWidget {
  const Feed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    List<PostData> pdList = [PostData("jsmith", "Joanne", "Smith", "assets/people/joanne.png", "assets/drawings/portrait.jpeg", 23, "Check out this drawing! Feel free to add your own edits!", 10, "2020-04-15 20:18:04Z")];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "doodle",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil().setSp(20)
              ),
              )
          ],
        )
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(20), right: ScreenUtil().setWidth(20)),
          child: ListView.builder(
            itemCount: pdList.length,
            itemBuilder: (context, index) {
              return Post(postData: pdList[index]);
            }),
          )
          
      )
    );
  }
}