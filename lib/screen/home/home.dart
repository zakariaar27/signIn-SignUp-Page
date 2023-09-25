import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac_five/utiliz/height_weight.dart';
import 'package:prac_five/widget/text.dart';
import 'package:prac_five/widget/textfromfield.dart';

import '../../const/image_path.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List sliderItem = [
    Stack(
      children: [
        KSliderImg(
          assetImage: KImage.slider1,
        ),
        KText(
          signInData: 'Skilled Computer & IT',
          color: Colors.white,
          fontweight: FontWeight.bold,
        ),
        Positioned(
          top: 70,
          left: 20,
          child: ElevatedButton(
              onPressed: () {}, child: KText(signInData: "Admission Here")),
        ),
      ],
    ),
    Stack(
      children: [
        KSliderImg(
          assetImage: KImage.slider2,
        ),
      ],
    ),
    Stack(
      children: [
        KSliderImg(
          assetImage: KImage.slider3,
        ),
      ],
    ),
    Stack(
      children: [
        KSliderImg(
          assetImage: KImage.slider4,
        ),
      ],
    ),
    Stack(
      children: [
        KSliderImg(
          assetImage: KImage.slider5,
        ),
      ],
    )
  ];

  int myIndex = 0;

  getScale(int index) {
    if (myIndex == index) {
      return 1.0;
    } else {
      return 8.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(206, 206, 206, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                height: KAppSize.getHeight(context: context, size: 20),
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      myIndex = value;
                    });
                  },
                  controller:
                      PageController(initialPage: 0, viewportFraction: 0.8),
                  itemCount: sliderItem.length,
                  itemBuilder: (context, index) {
                    double scale = getScale(index);
                    return TweenAnimationBuilder(
                      tween: Tween(begin: scale, end: scale),
                      duration: Duration(seconds: 1),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                        );
                      },
                      child: sliderItem[index],
                    );
                  },
                )),
            KText(
              signInData: 'Products',
              color: Colors.blue,
              fontSize: 25,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    child: KText(signInData: '$index pro'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
