import 'package:flutter/material.dart';
import 'package:doodle/models/profileData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'profilePill.dart';

class Profile extends StatelessWidget {
  final ProfileData profileData;

  const Profile({Key key, this.profileData}) : super(key: key);

  GridView buildPieces(List<String> piecesList) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      mainAxisSpacing: 1.5,
      crossAxisSpacing: 15.0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: piecesList.map((element) {
        return GridTile(child: 
          ClipRRect(
            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(10)),                  
            child: Image.asset(element, fit: BoxFit.cover),
          )
        );
      }).toList());
  }

  Column buildInfo(String info, String title) {
    return  Column(
      children: <Widget>[
        Text(
          info,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: ScreenUtil().setSp(20),
            color: Colors.black
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(12),
            color: Color(0xff9b9b9b)
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    var piecesList = this.profileData.piecesList;
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          Stack(  
            overflow: Overflow.visible,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(25)),
                  child: SizedBox(
                    height: ScreenUtil().setHeight(175),
                    width: ScreenUtil().setWidth(375),
                    child: Image.asset(this.profileData.profileBanner, fit: BoxFit.cover),
                  )
                ),
              Positioned(
                top: ScreenUtil().setHeight(135),
                left: ScreenUtil().setWidth((375/2)-45),
                width: ScreenUtil().setWidth(90),
                height: ScreenUtil().setHeight(90),
                child: SizedBox(
                  child: ClipOval(child: Image.asset(this.profileData.profilePicture, fit: BoxFit.cover),),
                )
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(65), width: ScreenUtil().setWidth(50)),
          Text(
            this.profileData.firstname + " " + this.profileData.lastname,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: ScreenUtil().setSp(20),
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(10), width: ScreenUtil().setWidth(50)),
          Text(
            "@" + this.profileData.username,
            style: TextStyle(
              color: Color(0xff9b9b9b),
              fontSize: ScreenUtil().setSp(15),
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(20), width: ScreenUtil().setWidth(50)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            SizedBox(height: ScreenUtil().setHeight(1), width: ScreenUtil().setWidth(20)),
            ProfilePill(icon: Icons.check, color: Colors.greenAccent, info: "Following"),
            SizedBox(height: ScreenUtil().setHeight(1), width: ScreenUtil().setWidth(20)),
            ProfilePill(icon: Icons.location_on, color: Colors.grey, info: this.profileData.location)
          ],),
          SizedBox(height: ScreenUtil().setHeight(20), width: ScreenUtil().setWidth(50)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            buildInfo(this.profileData.followers.toString(), "Followers"),
            buildInfo(this.profileData.following.toString(), "Following"),
            buildInfo(this.profileData.pieces.toString(), "Pieces")
          ],),
          SizedBox(height: ScreenUtil().setHeight(40), width: ScreenUtil().setWidth(50)),
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xffd3d3d3), width: 1)),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(20.0), right: ScreenUtil().setWidth(20.0), top: ScreenUtil().setWidth(0.0)),
              child: buildPieces(piecesList),
            ),
          )
        ],
      )
    );
  }
}