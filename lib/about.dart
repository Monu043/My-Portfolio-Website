import 'package:flutter/material.dart';
import 'package:websiteme/Contactme.dart';

class About extends StatefulWidget {
  About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (
      BuildContext context,BoxConstraints constraints) {
      if (constraints.maxWidth < 600) {
        return MobileAbout();
      } else {
        return DesktopAbout();
      }
    });
  }
}

class DesktopAbout extends StatefulWidget {
  const DesktopAbout({super.key});

  @override
  State<DesktopAbout> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopAbout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    Text(
                      'About me',
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Bold',
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 400,
                    width: 600,
                    child: Image.asset('lib/assest/bd.png'),
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'Hi, My Name is Monu and i am a App Developer.',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white)),
                        TextSpan(
                            text:
                                '\nI am pursuring My B.Tech from Government Engineering College, Nilokheri Karnal ',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Regular',
                                color: Colors.white)),
                                TextSpan(
                      text:
                          '\n-I completed my XII from ',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Regular',
                          color: Colors.white)),
                            TextSpan(
                      text:
                          'Government Model Sanskriti Sr. Sec. School, G.T Road Panipat ',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Regular',
                          color: Colors.white)),
                      
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 160,
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

class MobileAbout extends StatelessWidget {
  const MobileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text(
                'About me',
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Bold', color: Colors.white),
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset('lib/assest/bd.png'),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Column(
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Hi, My Name is Monu and i am a App Developer.',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Regular',
                          color: Colors.white)),
                  TextSpan(
                      text:
                          '\nI am pursuring My B.Tech from Government Engineering College, Nilokheri Karnal ',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Regular',
                          color: Colors.white)),
                   TextSpan(
                      text:
                          '\n\nI completed my XII from ',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Regular',
                          color: Colors.white)),
                            TextSpan(
                      text:
                          'Government Model Sanskriti Sr. Sec. School, G.T Road Panipat ',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Regular',
                          color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
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
