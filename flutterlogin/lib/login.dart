import 'package:flutter/material.dart';

class loginController extends StatefulWidget {
  @override
  _loginControllerState createState() => _loginControllerState();
}

class _loginControllerState extends State<loginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginWidget(),
    );
  }
}

class loginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade400,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 25.0,
                      icon: Icon(Icons.close),
                      color: Colors.white,
                      onPressed: () {
                        print("close");
                      },
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: FlatButton(
                      child: Text(
                        "密码登录",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                      onPressed: (){
                        print("login code ");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 60.0),
            child: Text(
              "手机号登录有助于您快速找到好友",
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50.0,
            color: Colors.white30,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 30.0),
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            alignment: Alignment.center,

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                iphoneButton(),
                Expanded(
                  child: Container(
                    child: TextField(
                    textAlign: TextAlign.left,
                    cursorColor: Colors.yellow,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "请输入手机号码",
                      hintStyle: TextStyle(
                          color: Colors.grey.shade200, fontSize: 16.0),
                    ),
                  ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50.0,
            color: Colors.white30,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  padding: EdgeInsets.only(left: 10.0),
                  child: TextField(
                    autofocus: true,
                    textAlign: TextAlign.left,
                    cursorColor: Colors.yellow,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "请输入验证码",
                      hintStyle: TextStyle(
                          color: Colors.grey.shade200, fontSize: 16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Text(
                      "获取验证码",
                      style: TextStyle(
                          fontSize: 16.0, color: Colors.grey.shade200),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80.0),
            alignment: Alignment.center,
            child: Text(
              "其他登录方式",
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: 30.0,
                  icon: Image.asset("assets/images/share_qq.png"),
                  onPressed: () {
                    print("QQ");
                  },
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 30.0,
                    icon: Image.asset("assets/images/share_wechat.png"),
                    onPressed: () {
                      print("Wechat");
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 30.0,
                    icon: Image.asset("assets/images/share_wechat.png"),
                    onPressed: () {
                      print("Wechat");
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            alignment: Alignment.center,
            child: Text(
              "登录遇到问题？",
              style: TextStyle(fontSize: 15.0, color: Colors.yellow),
            ),
          ),
        ],
      ),
    );
  }
}



// 获取区号
class iphoneButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
       child: Row(
          children: <Widget>[
              Padding(
                padding: EdgeInsets.zero,
                child: Text(
                  "+86",
                 style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.0,right: 0.0),
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 20.0,
                  color: Colors.white,
                ),
              ),
          ],
       ),
       onPressed: (){
         print("+ 86");
       },
    );
  }
}
