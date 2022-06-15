import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study/Screen/Home_pages.dart';
import 'package:study/auth/Signup_page.dart';
import 'package:study/Validator/Validator.dart';
import 'package:study/https/http_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController usenameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ApiClient _apiClient = ApiClient();
  bool _showPassword = true;

  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Processing Data'),
        backgroundColor: Colors.green.shade300,
      ));

      dynamic res = await _apiClient.login(
        usenameController.text,
        passwordController.text,
      );

      ScaffoldMessenger.of(context).hideCurrentSnackBar();

      if (res['token'] != null) {
        String accessToken = res['token'].toString();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomePages(accesstoken: accessToken)));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Error: ${res['Message']}'),
          backgroundColor: Colors.red.shade300,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 25,
            ),
            //image welcome
            Text('Say Hello', style: GoogleFonts.bebasNeue(fontSize: 36)),
            SizedBox(
              height: 10,
            ),
            Text(
              'Welcome back, you\'ve been App',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            //textfield gmail
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
                    controller: usenameController,
                    validator: (value) {
                      return Validator.validateName(value ?? "");
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'UserName'),
                  ),
                ),
              ),
            ),
            //textfield pass
            SizedBox(
              height: 10,
            ),
            //textfield gmail
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
                    // obscureText: true,
                    obscureText: _showPassword,
                    controller: passwordController,
                    validator: (value) {
                      return Validator.validatePassword(value ?? "");
                    },
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () =>
                              {setState(() => _showPassword = !_showPassword)},
                          child: Icon(
                            _showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'PassWord'),
                  ),
                ),
              ),
            ),
            //button login
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: login,
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => HomePages(accesstoken: accesToke,)));
                // },
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                      child: Text(
                    'Sign In',
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
                Text('Not a member? '),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SingupPage()));
                  }),
                  child: Text(
                    'Resginter now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
