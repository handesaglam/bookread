import 'package:bookread/component/color.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    /*  bottomNavigationBar: NavigationBar(
 selectedIndex: selectedIndex,
      showActiveButtonText: false,
      textStyle: TextStyle(color: white, fontWeight: FontWeight.bold),
      navigationBarButtons: [
        NavigationBarButton(
          icon: LineIcons.home,
          backgroundColor: black,
        ),
        NavigationBarButton(
          icon: LineIcons.search,
          backgroundColor: black,
        ),
        NavigationBarButton(
          icon: LineIcons.youtube,
          backgroundColor: black,
        ),
        NavigationBarButton(
          icon: LineIcons.download,
          backgroundColor: black,
        ),
      ],
      onTabChange: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      );*/


     
      backgroundColor: black,
      //  appBar: getAppBar(),
      body: getBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
    );
  }

  Widget getAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(LineIcons.bars), color: white, onPressed: () {}),
            SvgPicture.asset(
              "assets/images/logo.svg",
              width: 80,
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: white),
         
               
              /*  image: DecorationImage(
                    image: NetworkImage(profile), fit: BoxFit.cover),*/
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: selectedIndex,
      children: [
   
 
      ],
    );
  }
/*
  Widget getFloatingActionButton() {
    return NavigationBar(
      selectedIndex: selectedIndex,
      showActiveButtonText: false,
      textStyle: TextStyle(color: white, fontWeight: FontWeight.bold),
      navigationBarButtons: [
        NavigationBarButton(
          icon: LineIcons.home,
          backgroundColor: black,
        ),
        NavigationBarButton(
          icon: LineIcons.search,
          backgroundColor: black,
        ),
        NavigationBarButton(
          icon: LineIcons.youtube,
          backgroundColor: black,
        ),
        NavigationBarButton(
          icon: LineIcons.download,
          backgroundColor: black,
        ),
      ],
      onTabChange: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }*/
}
