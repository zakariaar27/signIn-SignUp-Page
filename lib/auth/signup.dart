import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac_five/auth/signin.dart';
import 'package:prac_five/const/image_path.dart';
import 'package:prac_five/utiliz/colors.dart';
import 'package:prac_five/utiliz/height_weight.dart';
import 'package:prac_five/widget/text.dart';
import 'package:prac_five/widget/textfromfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
              iconData: Icons.lock,
              hinttext: 'Password',
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
              iconData: Icons.lock,
              hinttext: 'Re-Password',
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
