import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socialflutter/pages/search.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  // TextEditingController _userNameInputController = TextEditingController();
  // TextEditingController _passwordInputController = TextEditingController();

//  _userNameInputController.addListener(() {
//    print(_userNameInputController.text);
//  })

  void _signIn(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: (Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/Street-Dance-01.jpg"),
                fit: BoxFit.cover,
              )),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xB38560A9), Color(0xFF8560A9)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Container(
                alignment: Alignment.center, child: _topLogoWidget(context)),
            Positioned(
              child: Container(
                child: MaterialButton(
                  onPressed: () {
                    _signIn(context);
                  },
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Color(0xFF453257),
                        fontSize: 16.0,
                        fontFamily: 'SourceSansPro-Semibold'),
                  ),
                  color: Theme.of(context).textSelectionColor,
                  height: 64.0,
                ),
              ),
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
            ),
          ],
        )));
  }

  Widget _topLogoWidget(context) {
    return Column(
      children: <Widget>[
        Padding(
          child: Text(
            'FIND THE MOST LOVED ACTIVITIES',
            style: TextStyle(
              color: Theme.of(context).textSelectionColor,
              fontFamily: 'SourceSansPro-Semibold',
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          padding: const EdgeInsets.only(top: 69.0, bottom: 16.0),
        ),
        Padding(
          child: Text(
            'BLACK CAT',
            style: TextStyle(
              color: Theme.of(context).textSelectionColor,
              fontFamily: 'SourceSansPro-Bold',
              fontSize: 24.0,
            ),
          ),
          padding: const EdgeInsets.only(bottom: 37.0),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
              child: Padding(
                  child: SvgPicture.asset(
                    'images/logo-cat.svg',
                    color: Theme.of(context).textSelectionColor,
                  ),
                  padding: const EdgeInsets.only(right: 3)),
              width: 54.0,
              height: 54.0),
          decoration: BoxDecoration(
              border: Border.all(
                  width: 1.0, color: Theme.of(context).textSelectionColor),
              borderRadius: BorderRadius.all(Radius.circular(100.0))),
        ),
        Padding(padding: EdgeInsets.all(37.0)),
        _inputFieldWidget(context)
      ],
    );
  }

  Widget _inputFieldWidget(context) {
    return (Column(
      children: <Widget>[
        TextField(
            decoration: InputDecoration(
                prefixIcon: SizedBox(
                  child: SvgPicture.asset(
                    'images/user.svg',
                    color: Color(0xFFD3C1E5),
                    width: 13.3,
                    height: 13.3,
                  ),
                  width: 13.3,
                  height: 13.3,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                        style: BorderStyle.solid)),
                hintText: 'Username',
                hintStyle: TextStyle(color: Color(0xFFAC8EC9)))),
        TextField(
          decoration: InputDecoration(
              prefixIcon: SizedBox(
                child: SvgPicture.asset('images/password.svg',
                    color: Color(0xFFD3C1E5)),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid)),
              hintText: 'Password',
              hintStyle: TextStyle(color: Color(0xFFAC8EC9))),
        ),
      ],
    ));
  }

  // Widget _confirmButton() {
  //   return (
  //     Button
  //   )
  // }

}
