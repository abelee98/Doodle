import 'package:doodle/models/postData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'post.dart';

class Feed extends StatefulWidget {
  Feed({Key key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    List<PostData> pdList = [PostData("jsmith", "Joanne", "Smith", "assets/people/joanne.png", "assets/drawings/portrait.jpeg", 23, "Check out this drawing! Feel free to add your own edits!", 10, "2020-04-15 20:18:04Z"), PostData("jsmith", "Joanne", "Smith", "assets/people/joanne.png", "assets/drawings/portrait.jpeg", 23, "Check out this drawing! Feel free to add your own edits!", 10, "2020-04-15 20:18:04Z"), PostData("jsmith", "Joanne", "Smith", "assets/people/joanne.png", "assets/drawings/portrait.jpeg", 23, "Check out this drawing! Feel free to add your own edits!", 10, "2020-04-15 20:18:04Z")];
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: WillPopScope(
          onWillPop: () async => false,
          child: SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: ScreenUtil().setWidth(20)),
                        Text(
                          "doodle",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(20)
                          ),
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: Color(0xfffafafa),
                  brightness: Brightness.light,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Post(postData: pdList[index]),
                    childCount: pdList.length,
                  ),
                )
              ],
            ),
          )
        )
      )
    );
  }
}
