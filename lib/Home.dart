import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> urls = [
    'https://www.linkedin.com/in/prajapatimonu04',
    'https://github.com/Monu043',
  ];

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopHome();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopHome();
      } else {
        return MobileHome();
      }
    });
  }
}
    
    
    
    
    
    
    
    
    
    
    
    
   
class DesktopHome extends StatelessWidget {
   DesktopHome({super.key});
 final List<String> urls = [
    'https://www.linkedin.com/in/prajapatimonu04',
    'https://github.com/Monu043',
  ];

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 100),
          padding: EdgeInsets.only(left: 250, right: 200),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 90),
                    padding: EdgeInsets.only(left: 0),
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: '\n Hi, I am',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Regular',
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                            text: ' Monu',
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: 'Bold',
                                color: Color.fromARGB(255, 72, 5, 189))),
                        TextSpan(
                            text: '\n and I am a ',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontFamily: 'Regular',
                            )),
                        TextSpan(
                            text: '\n passionate',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontFamily: 'Regular',
                            )),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 80,
                    ),
                    child: SizedBox(
                      child: DefaultTextStyle(
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Bold',
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 72, 5, 189)),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText(
                              'App Developer',
                            ),
                            WavyAnimatedText(
                              'Web Developer',
                            ),
                            //  TypewriterAnimatedText('Flutter Developer',speed: Duration(milliseconds: 100))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 60)),
                      Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: ElevatedButton(
                            onPressed: () => _launchURL(
                              'https://github.com/Monu043',
                            ),
                            child: Text(
                              'Git Hub',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Regular'),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 72, 5, 189)),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: ElevatedButton(
                            onPressed: () => _launchURL(
                              'https://www.linkedin.com/in/prajapatimonu04',
                            ),
                            child: Text(
                              'Linkedin',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Regular'),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 72, 5, 189)),
                          )),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Image.asset(
                    'lib/assest/bg.png',
                    height: 400,
                    width: 600,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 120,
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






class MobileHome extends StatelessWidget {
   MobileHome({super.key});
 final List<String> urls = [
    'https://www.linkedin.com/in/prajapatimonu04',
    'https://github.com/Monu043',
  ];

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 25, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 9),
                    padding: EdgeInsets.only(left: 0),
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: '\n Hi, I am',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Regular',
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                            text: ' Monu',
                            style: TextStyle(
                                fontSize: 35,
                                fontFamily: 'Bold',
                                color: Color.fromARGB(255, 72, 5, 189))),
                        TextSpan(
                            text: '\n and I am a ',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: 'Regular',
                            )),
                        TextSpan(
                            text: '\n passionate',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: 'Regular',
                            )),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 8,
                    ),
                    child: SizedBox(
                      child: DefaultTextStyle(
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Bold',
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 72, 5, 189)),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText(
                              'App Developer',
                            ),
                            WavyAnimatedText(
                              'Web Developer',
                            ),
                            //  TypewriterAnimatedText('Flutter Developer',speed: Duration(milliseconds: 100))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 6)),
                      Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: ElevatedButton(
                            onPressed: () => _launchURL(
                              'https://github.com/Monu043',
                            ),
                            child: Text(
                              'Git Hub',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Regular'),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 72, 5, 189)),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: ElevatedButton(
                            onPressed: () => _launchURL(
                              'https://www.linkedin.com/in/prajapatimonu04',
                            ),
                            child: Text(
                              'Linkedin',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Regular'),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 72, 5, 189)),
                          )),
                    ],
                  ),
                ],
              ),Spacer(),
               Column(
                children: [
                  Image.asset(
                    'lib/assest/bg.png',
                    height: 250,
                    width: 200,
                  ),
                ],
              ),
             ],
          ),
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