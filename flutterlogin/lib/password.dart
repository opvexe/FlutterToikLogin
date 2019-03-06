import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class passwordController extends StatefulWidget {
  @override
  _passwordControllerState createState() => _passwordControllerState();
}

class _passwordControllerState extends State<passwordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade400,
      body: passwordWidget(),
    );
  }
}

class passwordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 15.0, top: 30.0),
            child: IconButton(
              padding: EdgeInsets.zero,
              iconSize: 25.0,
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                print("back");
                Navigator.of(context).pop("pop back page data");
              },
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
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 30.0),
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white30, //颜色加在装饰内部
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                iphoneButton(),
                Expanded(
                  child: Container(
                    child: TextField(
                      maxLines: 1,
                      textAlign: TextAlign.left,
                      cursorColor: Colors.yellow,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "请输入手机号码",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade200, fontSize: 16.0),
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
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
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 15.0),
            padding: EdgeInsets.only(left: 20.0, right: 5.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white30, //颜色加在装饰内部
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: TextField(
              obscureText: true,
              textAlign: TextAlign.left,
              cursorColor: Colors.yellow,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "请输入账号密码",
                hintStyle:
                    TextStyle(color: Colors.grey.shade200, fontSize: 16.0),
              ),
              style: TextStyle(
                //设置输入文本颜色
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            alignment: Alignment.center,
            child: FlatButton(
              child: Text(
                "忘记了？找回密码",
                style: TextStyle(
                  color: Colors.yellow.shade200,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          agreementWidget(),
          SimpleRoundButton(
           backgroundColor: Colors.yellow,
            buttonText: Text(
              "登录",
               style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              color: Colors.purple,
            ),
            ),
            onPressed: (){
              print("login password");
            },
          ),
        ],
      ),
      ),
    );
  }
}

/// 四周带圆角的button
class SimpleRoundButton extends StatelessWidget {
  final Color backgroundColor;
  final Text buttonText;
  final Color textColor;
  final Function onPressed;
  SimpleRoundButton({
    this.backgroundColor,
    this.buttonText,
    this.textColor,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.only(left: 20.0,right: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              splashColor: this.backgroundColor,
              color: this.backgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
                    child: buttonText,
                  ),
                ],
              ),
              onPressed: () =>onPressed,
            ),
          ),
        ],
      ),
    );
  }
}

//文本协议 TextSpan布局
class agreementWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          text: "登录即同意",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          children: [
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print("点击了服务条款");
                },
              text: "服务条款",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.yellow,
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              text: "和",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print("点击了隐私条款");
                },
              text: "隐私政策",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.yellow,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
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
            padding: EdgeInsets.only(left: 3.0, right: 0.0),
            child: Icon(
              Icons.arrow_drop_down,
              size: 20.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      onPressed: () {
        print("+ 86");
      },
    );
  }
}
