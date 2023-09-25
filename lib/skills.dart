import 'package:flutter/material.dart';
import 'package:websiteme/Contactme.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (
      BuildContext context,BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
        return MobileSkill();
      } else if (constraints.maxWidth > 1000) {
        return DesktopSkill();
      } else {
        return TabletSkill();
      } 
    });
  }
}
class DesktopSkill extends StatelessWidget {
  const DesktopSkill({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 100),
          child: Row(
            children: [
              Text(
                'Skills',
                style: TextStyle(
                    fontSize: 40, fontFamily: 'Bold', color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 200,
                    )),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        Image.asset('lib/assest/flutter.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '- flutter \n\nI have a good\nknowledge of flutter',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white))
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        Image.asset('lib/assest/dart.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('- Dart \n\nI have a good\nknowledge of Dart',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white))
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        Image.asset('lib/assest/firebase.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '- firebase \n\nI have a good\nknowledge of Firebase',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white))
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        Image.asset('lib/assest/amazon.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('- AWS \n\nI have a good\nknowledge of AWS',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        Image.asset('lib/assest/android.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '- Android Studio \n\nI have a good\nknowledge of Android Studio',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Row(
          children: [ Padding(padding: EdgeInsets.only(left: 200)),
                Text('Professional Skills :-',      
            style: TextStyle(
                  fontSize: 30, fontFamily: 'Regular', color: Colors.white),
           ),
          ],
        ),
        SizedBox(height: 20,),
        Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 200)),
            
            Text(
              '- I have a good knowledge of dart, flutter, firebase and i am learning aws.\n- I have done internships\n- Quick Learner\n- Easily adaptable to different working conditions\n- Team Work Spirit',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Regular', color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Divider(
          color: Colors.deepPurple,
          thickness: 1,
          indent: 100,
          endIndent: 100,
        ),
      ],
    );
  }
}

class MobileSkill extends StatelessWidget {
  const MobileSkill({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text(
                'Skills',
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Bold', color: Colors.white),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    left: 20,
                  )),
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        top: 5,
                      )),
                      Image.asset('lib/assest/flutter.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('- flutter \nI have a good\nknowledge of flutter',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Regular',
                              color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        top: 5,
                      )),
                      Image.asset('lib/assest/dart.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('- Dart \nI have a good\nknowledge of Dart',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Regular',
                              color: Colors.white))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    left: 20,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        top: 5,
                      )),
                      Image.asset('lib/assest/firebase.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('- firebase \nI have a good\nknowledge of firebase',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Regular',
                              color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        top: 5,
                      )),
                      Image.asset('lib/assest/amazon.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('- AWS \nI have a good\nknowledge of AWS',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Regular',
                              color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    left: 20,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        top: 5,
                      )),
                      Image.asset('lib/assest/android.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          '- Android Studio \nI have a good\nknowledge of Android Studio',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Regular',
                              color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
         Row(
          children: [ Padding(padding: EdgeInsets.only(left: 20)),
                Text('Professional Skills :-',      
            style: TextStyle(
                  fontSize: 25, fontFamily: 'Regular', color: Colors.white),
           ),
          ],
        ),

        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Text(
               '- I have a good knowledge of dart, \nflutter, firebase \n- I am learning aws.\n- I have done internships\n- Quick Learner\n- Easily adaptable to different working \nconditions\n- Team Work Spirit',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Regular', color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Divider(
          color: Colors.deepPurple,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}


class TabletSkill extends StatelessWidget {
  const TabletSkill({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 100),
          child: Row(
            children: [
              Text(
                'Skills',
                style: TextStyle(
                    fontSize: 40, fontFamily: 'Bold', color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 10,
                    )),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        Image.asset('lib/assest/flutter.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '- flutter \n\nI have a good\nknowledge of flutter',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        Image.asset('lib/assest/dart.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('- Dart \n\nI have a good\nknowledge of Dart',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        Image.asset('lib/assest/firebase.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '- firebase \n\nI have a good\nknowledge of Firebase',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        Image.asset('lib/assest/amazon.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('- AWS \n\nI have a good\nknowledge of AWS',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        Image.asset('lib/assest/android.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '- Android Studio \n\nI have a good\nknowledge of Android Studio',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Row(
          children: [ Padding(padding: EdgeInsets.only(left: 10)),
                Text('Professional Skills :-',      
            style: TextStyle(
                  fontSize: 30, fontFamily: 'Regular', color: Colors.white),
           ),
          ],
        ),
        SizedBox(height: 20,),
        Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 10)),
            
            Text(
              '- I have a good knowledge of dart, flutter, firebase and i am learning aws.\n- I have done internships\n- Quick Learner\n- Easily adaptable to different working conditions\n- Team Work Spirit',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Regular', color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Divider(
          color: Colors.deepPurple,
          thickness: 1,
          indent: 100,
          endIndent: 100,
        ),
      ],
    );
  }
}