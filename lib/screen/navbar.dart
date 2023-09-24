import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac_five/screen/home/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;

  List myItemList = [
    HomePage(),
    Text('Mohamamd '),
    Text('Zakaria'),
    Text('Arafat')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: myItemList[index],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Container(
            child: BottomNavigationBar(
                backgroundColor: Colors.blue,
                currentIndex: index,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.white,
                showUnselectedLabels: true,
                onTap: (value) {
                  setState(() {
                    index = value;
                  });
                },
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.card_travel), label: "Cart"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: "Favorite"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Profile"),
                ]),
          ),
        ),
      ),
    );
  }
}
