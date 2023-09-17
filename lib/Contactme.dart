import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class Contactme extends StatefulWidget {
  const Contactme({super.key});

  @override
  State<Contactme> createState() => _ContactmeState();
}

class _ContactmeState extends State<Contactme> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopContactus();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopContactus();
      } else {
        return MobileContactus();
      }
    });
  }
}

class DesktopContactus extends StatelessWidget {
  const DesktopContactus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 100)),
              Text(
                'Contact me',
                style: TextStyle(
                    fontSize: 40, fontFamily: 'Bold', color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          height: 500,
          width: 800,
          child: ContactUs(
            companyName: 'You can contact me here',
            companyFontSize: 30,
            websiteText: 'Contact here',
            emailText: 'Email Me',
            companyFont: 'Regular',
            textColor: Colors.white,
            cardColor: Color.fromARGB(255, 72, 5, 189),
            companyColor: Colors.white,
            taglineColor: Colors.white,
            email: 'parjapatimonu1043@gmail.com',
            linkedinURL: 'https://www.linkedin.com/in/prajapatimonu04',
            githubUserName: 'https://github.com/Monu043',
          ),
        ),
      ],
    );
  }
}

class MobileContactus extends StatelessWidget {
  const MobileContactus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                'Contact me',
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Bold', color: Colors.white),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 500,
          width: 800,
          child: ContactUs(
            companyName: 'You can contact me here',
            companyFontSize: 20,
            websiteText: 'Contact here',
            emailText: 'Email Me',
            companyFont: 'Regular',
            textColor: Colors.white,
            cardColor: Color.fromARGB(255, 72, 5, 189),
            companyColor: Colors.white,
            taglineColor: Colors.white,
            email: 'parjapatimonu1043@gmail.com',
            linkedinURL: 'https://www.linkedin.com/in/prajapatimonu04',
            githubUserName: 'https://github.com/Monu043',
          ),
        ),
      ],
    );
  }
}
