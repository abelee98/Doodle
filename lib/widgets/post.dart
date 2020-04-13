import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doodle/postIcons.dart';

class Post extends StatefulWidget {
  Post({Key key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool snapped = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);

    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(children: <Widget>[
            SizedBox(
              height: ScreenUtil().setWidth(40),
              width: ScreenUtil().setWidth(40),
              child: ClipOval(
                child: Image.asset("assets/people/joanne.png", fit: BoxFit.cover,),
              ),
            ),
            SizedBox(width: ScreenUtil().setWidth(10),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Joanne Smith",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(15),
                  ),
                ),
                Text(
                  "6 mins ago",
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(12),
                    color: Color(0xff9b9b9b)
                  ),
                )
              ],
            ), 
          ],),
          SizedBox(
            height: ScreenUtil().setHeight(35),
            width: ScreenUtil().setWidth(35),
            child: Icon(Icons.more_vert, color: Color(0xff9b9b9b))
          ),
        ],
      ),
      SizedBox(height: ScreenUtil().setHeight(10)),
      ClipRRect(
        borderRadius: BorderRadius.circular(ScreenUtil().setWidth(25)),
        child: SizedBox(
          height: ScreenUtil().setHeight(245),
          width: ScreenUtil().setWidth(335),
          child: Image.asset("assets/drawings/portrait.jpeg", fit: BoxFit.cover),
        )
      ),
      Padding(
        padding: EdgeInsets.all(ScreenUtil().setHeight(15)),
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                      child: Icon(
                          PostIcons.snap, 
                          color: snapped ? Colors.red : Colors.black, 
                          size: ScreenUtil().setWidth(20)
                        ), 
                      onTap: () {
                        setState(() {
                          snapped = !snapped;
                        });
                      }),
                  SizedBox(width: ScreenUtil().setWidth(10)),
                  Text(
                    "23",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(11),
                      color: Color(0xff9b9b9b)
                    )
                  )
                ],
              ),
              Icon(PostIcons.pencil, color: Colors.black, size: ScreenUtil().setWidth(15)),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(10)),
          Text(
            "Check out this drawing! Feel free to add your own ideas!",
            style: TextStyle(
              fontSize: ScreenUtil().setSp(15),
              fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: ScreenUtil().setHeight(20),
                width: ScreenUtil().setWidth(20),
                child: ClipOval(child: Image.asset("assets/people/ryan.png", fit: BoxFit.cover),)
              ),
              Expanded(
                child:TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: "Add a comment",
                    labelStyle: TextStyle(fontSize: ScreenUtil().setSp(12.0), color: Color(0xff9b9b9b))
                  ),
                ),
              ),
              Text(
                "10",
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(11),
                  fontWeight: FontWeight.bold,
                )
              )
            ],
          ),
        ],
        ),
      )
    ],);
  }
}