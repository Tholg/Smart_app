import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:timer_builder/timer_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String getSystemTime() {
    var now = new DateTime.now();
    return new DateFormat("H:m:s").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          ("images/moon.jpg"),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Container(
          child: Row(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 300,
                  width: 200,
                ),
                TimerBuilder.periodic(Duration(seconds: 1), builder: (context) {
                  // print("${getSystemTime()}");
                  return Text(
                    "${getSystemTime()}",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.75),
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  );
                }),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Lottie.asset(
                    "images/moonscreen.json",
                  ),
                )
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 50,
                  ),
                  Text("aaaa"),
                  Text("aaaa"),
                  Text("aaaa"),
                  Text("aaaa"),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
