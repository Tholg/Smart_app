import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:study/auth/Login_page.dart';
import 'DateField_page.dart';
import 'package:study/Validator/Validator.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({Key? key}) : super(key: key);

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  final TextEditingController emailControler = TextEditingController();
  bool check_create = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 25,
          ),
          Text('Sign Up', style: GoogleFonts.bebasNeue(fontSize: 36)),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  validator: (value) => Validator.validateEmail(value ?? ""),
                  controller: emailControler,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Username'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: DateFieldPAge()),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Email'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Password'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: (() {
                if (check_create) {
                  Alert(
                    context: context,
                    type: AlertType.error,
                    title: "ERRO",
                    desc: "Erro Create Acount.Can you create again.",
                    buttons: [
                      DialogButton(
                        color: Colors.red[300],
                        child: Text(
                          "Exit",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();
                } else {
                  Alert(
                    context: context,
                    type: AlertType.success,
                    title: "SUCCESS",
                    desc: "You create success acount",
                    buttons: [
                      DialogButton(
                        color: Colors.green[300],
                        child: Text(
                          "Exit",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();
                }
              }),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  'Sign up',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Success create member? '),
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: Text(
                  'Signin now',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ]),
      )),
    );
  }
}
