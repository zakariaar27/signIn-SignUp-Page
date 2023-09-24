import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac_five/auth/signin.dart';
import 'package:prac_five/const/image_path.dart';
import 'package:prac_five/utiliz/colors.dart';
import 'package:prac_five/utiliz/height_weight.dart';
import 'package:prac_five/widget/text.dart';
import 'package:prac_five/widget/textfromfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPass = true;
  bool isPassRe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Image.asset(KImage.signUpImg,
              height: KAppSize.getHeight(context: context, size: 20),
              width: KAppSize.getWidth(context: context, size: 40),
              fit: BoxFit.cover),
          KText(
            signInData: "Sign Up A Account",
            color: AppColor.titlecolor,
            fontweight: FontWeight.bold,
            fontSize: 25,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 5,
            ),
            child: KTextFromField(
              iconData: Icons.person,
              prefixIcon: Icon(Icons.person),
              hinttext: 'Name',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 5,
            ),
            child: KTextFromField(
              prefixIcon: Icon(Icons.email),
              iconData: Icons.email,
              hinttext: 'Email',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 5,
            ),
            child: KTextFromField(
              prefixIcon: Icon(Icons.lock),
              hinttext: 'Password',
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
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 5,
            ),
            child: KTextFromField(
              prefixIcon: Icon(Icons.lock),
              hinttext: 'Re-Password',
              suffixIcon: GestureDetector(
                onTap: () {
                  isPassRe = !isPassRe;
                  print(isPass);
                  setState(() {});
                },
                child: isPass == false
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Sign Up',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(39, 97, 255, 1),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You Already Have An Account."),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogIn(),
                        ));
                  },
                  child: KText(
                    signInData: "Sign In",
                    fontSize: 14,
                    color: AppColor.titlecolor,
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
