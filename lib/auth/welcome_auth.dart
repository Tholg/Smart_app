import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:study/auth/Login_page.dart';

class WelcomeAuth extends StatefulWidget {
  const WelcomeAuth({Key? key}) : super(key: key);

  @override
  State<WelcomeAuth> createState() => _WelcomeAuthState();
}

class _WelcomeAuthState extends State<WelcomeAuth> {
  @override
  void initState() {
    //set time to load image
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Lottie.asset("images/screen_welcome.json"),
            )
          ],
        ),
      ),
    );
  }
}
