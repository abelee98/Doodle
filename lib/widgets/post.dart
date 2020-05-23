import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doodle/models/postData.dart';
import 'package:doodle/customIcons.dart';

class Post extends StatefulWidget {
  final PostData postData;

  Post({Key key, @required this.postData}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool snapped = false;

  String handleTimeChange(Duration change, DateTime postDate) {
    if (change.inMinutes <= 60) {
      return change.inMinutes.toString() + " mins ago";
    } else if (change.inHours <= 24) {
      return change.inHours.toString() + " hours ago";
    } else if (change.inDays <= 7) {
      return change.inDays.toString() + " days ago";
    } else {
      var month;
      switch (postDate.month) {
        case 1:
          month = "January";
          break;
        case 2:
          month = "February";
          break;
        case 3: 
          month = "March";
          break;
        case 4: 
          month = "April";
          break;
        case 5:
          month = "May";
          break;
        case 6:
          month = "June";
          break;
        case 7:
          month = "July";
          break;
        case 8:
          month = "August";
          break;
        case 9:
          month = "September";
          break;
        case 10:
          month = "October";
          break;
        case 11:
          month = "November";
          break;
        default:
          month = "December";
          break;
      }
      return month + " " + postDate.day.toString() + ", " + postDate.year.toString();
    }
  } 

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    final currentDate = DateTime.now();
    final postDate = DateTime.parse(widget.postData.time);
    Duration change = currentDate.difference(postDate);

    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(20), right: ScreenUtil().setWidth(20), top: ScreenUtil().setHeight(10)),
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: <Widget>[
                SizedBox(
                  height: ScreenUtil().setWidth(40),
                  width: ScreenUtil().setWidth(40),
                  child: ClipOval(
                    child: Image.asset(widget.postData.profilePicURL, fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: ScreenUtil().setWidth(10),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.postData.firstName + " " + widget.postData.lastName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(15),
                      ),
                    ),
                    Text(
                      handleTimeChange(change, postDate),
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
              child: Image.asset(widget.postData.photoURL, fit: BoxFit.cover),
            )
          ),
          SizedBox(height: ScreenUtil().setHeight(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                      child: Icon(
                          CustomIcons.snap, 
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
                    widget.postData.snaps.toString(),
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(11),
                      color: Color(0xff9b9b9b)
                    )
                  )
                ],
              ),
              Icon(CustomIcons.pencil, color: Colors.black, size: ScreenUtil().setWidth(15)),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(10)),
          Text(
            widget.postData.comment,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(15),
              fontWeight: FontWeight.w300
            ),
          ),
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
                widget.postData.commentCount.toString(),
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