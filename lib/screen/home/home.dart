import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac_five/const/image_path.dart';
import 'package:prac_five/utiliz/height_weight.dart';
import 'package:prac_five/widget/text.dart';
import 'package:prac_five/widget/textfromfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(206, 206, 206, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: KAppSize.getHeight(context: context, size: 1),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  KText(signInData: 'Welcome To '),
                  KText(
                    signInData: 'Learn An Hour',
                    color: Colors.blue,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.notifications),
              ),
            ]),
            SizedBox(
              height: KAppSize.getHeight(context: context, size: 3),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: KTextFromField(
                readOnly: true,
                suffixIcon: Icon(Icons.search),
                hinttext: 'Search...',
              ),
            ),
            SizedBox(
              height: KAppSize.getHeight(context: context, size: 3),
            ),
            SizedBox(
                height: KAppSize.getHeight(context: context, size: 150),
                child: PageView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      Image.asset(KImage.slider1),
                      Image.asset(KImage.slider2),
                      Image.asset(KImage.slider3),
                      Image.asset(KImage.slider4),
                      Image.asset(KImage.slider5),
                      KText(signInData: "$index")
                    ]);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
