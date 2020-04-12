import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatelessWidget {
  const Signup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);

    return Scaffold(
      body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(40.0), right: ScreenUtil().setWidth(40)),
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(70), bottom: ScreenUtil().setWidth(20)),
              child: Text(
                "Welcome!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(50)
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(5), bottom: ScreenUtil().setWidth(5)),
              child:Container( 
                decoration: BoxDecoration( 
                  border: Border(bottom: BorderSide(width: 1.0, color: Color(0xffd8d8d8)))
                ),
                child: Row(children: <Widget>[
                  SizedBox(
                    child: Image.asset("assets/icons/people.png"),
                    width: ScreenUtil().setWidth(20),
                    height: ScreenUtil().setWidth(20),
                  ),
                  Flexible(child: 
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                        labelText: "Username",
                        labelStyle: TextStyle(fontSize: ScreenUtil().setSp(12.0), color: Colors.black)
                      ),
                    ),
                  )
                ],)
              ),
            ),
            Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(5), bottom: ScreenUtil().setWidth(5)),
              child:Container( 
                decoration: BoxDecoration( 
                  border: Border(bottom: BorderSide(width: 1.0, color: Color(0xffd8d8d8)))
                ),
                child: Row(children: <Widget>[
                  SizedBox(
                    child: Image.asset("assets/icons/email.png"),
                    width: ScreenUtil().setWidth(20),
                    height: ScreenUtil().setWidth(20),
                  ),
                  Flexible(child: 
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: ScreenUtil().setSp(12.0), color: Colors.black)
                      ),
                    ),
                  )
                ],)
              ),
            ),
            Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(5), bottom: ScreenUtil().setWidth(5)),
              child:Container( 
                decoration: BoxDecoration( 
                  border: Border(bottom: BorderSide(width: 1.0, color: Color(0xffd8d8d8)))
                ),
                child: Row(children: <Widget>[
                  SizedBox(
                    child: Image.asset("assets/icons/password.png"),
                    width: ScreenUtil().setWidth(20),
                    height: ScreenUtil().setWidth(20),
                  ),
                  Flexible(child: 
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: ScreenUtil().setSp(12.0), color: Colors.black)
                      ),
                    ),
                  )
                ],)
              ),
            ),
            Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(5), bottom: ScreenUtil().setWidth(5)),
              child:Container( 
                decoration: BoxDecoration( 
                  border: Border(bottom: BorderSide(width: 1.0, color: Color(0xffd8d8d8)))
                ),
                child: Row(children: <Widget>[
                  SizedBox(
                    child: Image.asset("assets/icons/password.png"),
                    width: ScreenUtil().setWidth(20),
                    height: ScreenUtil().setWidth(20),
                  ),
                  Flexible(child: 
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: ScreenUtil().setSp(12.0), color: Colors.black)
                      ),
                    ),
                  )
                ],)
              ),
            ),
            SizedBox(height: ScreenUtil().setWidth(30)),
            Container(
              width: ScreenUtil().setWidth(300),
              height: ScreenUtil().setHeight(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.black,
              ),
              child:Center(
                child: Text(
                    "SIGNUP",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(10),
                      color: Colors.white
                    ),
                  ),
              ) 
            ),
            SizedBox(height: ScreenUtil().setWidth(15)),
            Center(
              child: Text(
                  "Or",
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(12.0),
                    color: Color(0xff9b9b9b)
                  )
                )
            ),
            SizedBox(height: ScreenUtil().setWidth(15)),
            Container(
              width: ScreenUtil().setWidth(300),
              height: ScreenUtil().setHeight(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Color(0xff0061d2)
              ),
              child:Center(
                child: Text(
                    "SIGNUP THROUGH FACEBOOK",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(10),
                      color: Colors.white
                    ),
                  ),
              ) 
            ),
            SizedBox(height: ScreenUtil().setWidth(15)),
            Container(
              width: ScreenUtil().setWidth(300),
              height: ScreenUtil().setHeight(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color:  Color(0xffda001b),
              ),
              child:Center(
                child: Text(
                    "SIGNUP THROUGH GOOGLE",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(10),
                      color: Colors.white
                    ),
                  ),
              ) 
            )
          ],
        ),
        )
      ),
    );
  }
}