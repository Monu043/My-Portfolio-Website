import 'package:flutter/material.dart';
import 'package:websiteme/Project.dart';
import 'package:websiteme/about.dart';
import 'package:websiteme/skills.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:websiteme/Home.dart';
import 'package:websiteme/Contactme.dart';
import 'package:adaptive_navbar/adaptive_navbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

final ScrollController = AutoScrollController();

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 10, 91),
      appBar: AdaptiveNavBar(
        backgroundColor:  Color.fromARGB(255, 72, 5, 189),
    toolbarTextStyle: TextStyle(fontFamily: 'Bold', fontSize: 15, color: Colors.white),
    
          screenWidth: sw,
          title: const Text(
            'Monu Portfolio',
            style: TextStyle(
                fontFamily: 'Bold', fontSize: 25, color: Colors.white),
          ),
          navBarItems: [
            NavBarItem(
                text: 'Home',
                onTap: () {
                  scrollToSection(0);
                }),
            NavBarItem(
              text: 'About',
              onTap: () {
                scrollToSection(1);
              },
            ),
            NavBarItem(
                text: 'Skills',
                onTap: () {
                  scrollToSection(2);
                }),
            NavBarItem(
              text: 'Projects',
              onTap: () {
                scrollToSection(3);
              },
            ),
            NavBarItem(
              text: 'Contact me',
              onTap: () {
                scrollToSection(4);
              },
            ),
          ]),
      body: ListView(
        controller: ScrollController,
        children: [
          AutoScrollTag(
              key: ValueKey(0),
              controller: ScrollController,
              index: 0,
              child: Home()),
          AutoScrollTag(
            key: ValueKey(1),
            controller: ScrollController,
            index: 1,
            child: About(),
          ),
          AutoScrollTag(
            key: ValueKey(2),
            controller: ScrollController,
            index: 2,
            child: Skills(),
          ),
          AutoScrollTag(
            key: ValueKey(3),
            controller: ScrollController,
            index: 3,
            child: Project(),
          ),
          AutoScrollTag(
            key: ValueKey(4),
            controller: ScrollController,
            index: 3,
            child: Contactme(),
          ),
        ],
      ),
    );
  }

  void scrollToSection(int index) {
    ScrollController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
      duration: Duration(milliseconds: 500),
    );
  }
}
