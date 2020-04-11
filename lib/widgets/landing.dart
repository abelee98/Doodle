import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Width and Height set for iPhone xs
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            height: ScreenUtil().setHeight(550),
            width: ScreenUtil().setWidth(320),
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                color: Color.fromARGB(100, 232, 243, 255)
                // color: Colors.red
              ),
            )
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(20.0), right: ScreenUtil().setWidth(20.0), top: ScreenUtil().setWidth(20.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "doodle",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        Text(
                          "LOG IN",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(10),
                            fontWeight: FontWeight.bold
                          ),
                          )
                      ],
                    ), 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        width: ScreenUtil().setWidth(210),
                        child: 
                          Text(
                            "Let's Get Started",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(40)
                            ),
                          )
                      ),
                      SizedBox(height: ScreenUtil().setHeight(40)),
                      Container(
                        width: ScreenUtil().setWidth(300),
                        height: ScreenUtil().setHeight(50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.black,
                        ),
                        child:Center(
                          child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(10),
                                color: Colors.white
                              ),
                            ),
                        ) 
                      )
                    ],)
                  ],
                ),
              )
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(70),
            left: ScreenUtil().setWidth(110),
            height: ScreenUtil().setHeight(85),
            width: ScreenUtil().setWidth(85),
            child: ClipOval(
              child: Image.asset(
                "assets/landing1.jpeg",
                fit: BoxFit.cover
              ),
            )
          ),
          Positioned(
            top: ScreenUtil().setHeight(190),
            left: ScreenUtil().setWidth(30),
            height: ScreenUtil().setHeight(50),
            width: ScreenUtil().setWidth(50),
            child: ClipOval(
              child: Image.asset(
                "assets/landing2.jpeg",
                fit: BoxFit.cover
              ),
            )
          ),
          Positioned(
            top: ScreenUtil().setHeight(140),
            right: ScreenUtil().setWidth(50),
            height: ScreenUtil().setHeight(40),
            width: ScreenUtil().setWidth(40),
            child: ClipOval(
              child: Image.asset(
                "assets/landing3.jpeg",
                fit: BoxFit.cover
              ),
            )
          ),
          Positioned(
            top: ScreenUtil().setHeight(240),
            right: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(135),
            width: ScreenUtil().setWidth(135),
            child: ClipOval(
              child: Image.asset(
                "assets/landing4.jpeg",
                fit: BoxFit.cover
              ),
            )
          ),
          Positioned(
            top: ScreenUtil().setHeight(390),
            left: ScreenUtil().setWidth(50),
            height: ScreenUtil().setHeight(115),
            width: ScreenUtil().setWidth(115),
            child: ClipOval(
              child: Image.asset(
                "assets/landing5.jpeg",
                fit: BoxFit.cover
              ),
            )
          ),
        ],
      )
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override 
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height/8);
    path.quadraticBezierTo(0, size.height/3, size.width/2, size.height/2);
    path.quadraticBezierTo(3*(size.width/4), (size.height/2) + 50, 3*(size.width/4), 3*(size.height/4));
    path.quadraticBezierTo(3*(size.width/4), size.height-40, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override 
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}