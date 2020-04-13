import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doodle/widgets/cutomappbar.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);

    return Scaffold(
      body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(20.0), right: ScreenUtil().setWidth(20)),
        child: ListView(
          children: <Widget>[
            SizedBox(height: ScreenUtil().setWidth(10)),
            CustomAppBar(),
            Padding(padding: EdgeInsets.only(left:ScreenUtil().setWidth(20), right: ScreenUtil().setWidth(20), top: ScreenUtil().setWidth(70), bottom: ScreenUtil().setWidth(5)),
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(50)
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left:ScreenUtil().setWidth(20), right: ScreenUtil().setWidth(20), top: ScreenUtil().setWidth(5), bottom: ScreenUtil().setWidth(20)),
              child: Text(
                "Enter your creditials to login!",
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(12),
                  color: Color(0xff9b9b9b)
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left:ScreenUtil().setWidth(20), right: ScreenUtil().setWidth(20), top: ScreenUtil().setWidth(5), bottom: ScreenUtil().setWidth(5)),
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
            Padding(padding: EdgeInsets.only(left:ScreenUtil().setWidth(20), right: ScreenUtil().setWidth(20), top: ScreenUtil().setWidth(5), bottom: ScreenUtil().setWidth(5)),
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
            Padding(
              padding: EdgeInsets.only(left:ScreenUtil().setWidth(20), right: ScreenUtil().setWidth(20)),
              child:
                Container(
                  width: ScreenUtil().setWidth(300),
                  height: ScreenUtil().setHeight(50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xff0061d2),
                  ),
                  child:Center(
                    child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(10),
                          color: Colors.white
                        ),
                      ),
                  ) 
                ),
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
            Padding(
              padding: EdgeInsets.only(left:ScreenUtil().setWidth(20), right: ScreenUtil().setWidth(20)),
              child:
                Container(
                  width: ScreenUtil().setWidth(300),
                  height: ScreenUtil().setHeight(50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color:  Colors.black,
                  ),
                  child:Center(
                    child: Text(
                        "DON'T HAVE AN ACCOUNT?",
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(10),
                          color: Colors.white
                        ),
                      ),
                  ) 
                )
            )
          ],
        ),
        )
      ),
    );
  }
}