import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac_five/auth/signup.dart';
import 'package:prac_five/const/image_path.dart';
import 'package:prac_five/utiliz/colors.dart';
import 'package:prac_five/utiliz/height_weight.dart';
import 'package:prac_five/widget/text.dart';
import 'package:prac_five/widget/textfromfield.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isPass = true;
  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: fromKey,
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset(KImage.signInImg,
                  height: KAppSize.getHeight(context: context, size: 30),
                  width: KAppSize.getWidth(context: context, size: 40),
                  fit: BoxFit.cover),
              SizedBox(
                height: KAppSize.getHeight(context: context, size: 3),
              ),
              KText(
                signInData: 'Welcome Back',
                fontSize: 30,
                fontweight: FontWeight.bold,
                color: Color.fromRGBO(39, 97, 255, 1),
              ),
              KText(
                signInData: 'Login to your existing account',
                fontSize: 15,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 5),
                child: KTextFromField(
                  hinttext: 'Username or Email',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 5),
                child: KTextFromField(
                  iconData: Icons.lock,
                  isPass: isPass,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      isPass = !isPass;
                      print(isPass);
                      setState(() {});
                    },
                    child: isPass == false
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                  hinttext: 'Password',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: KText(
                        signInData: "Forget Password",
                        fontSize: 14,
                        color: AppColor.titlecolor,
                      )),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              ElevatedButton(
                onPressed: () {
                  fromKey.currentState?.validate();
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(39, 97, 255, 1),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have Account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: KText(
                        signInData: "Sign up",
                        fontSize: 14,
                        color: AppColor.titlecolor,
                      )),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
