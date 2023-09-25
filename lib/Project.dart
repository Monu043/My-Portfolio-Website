import 'package:flutter/material.dart';
import 'package:websiteme/Contactme.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
     return LayoutBuilder(builder: (
      BuildContext context,BoxConstraints constraints) {
     if (constraints.maxWidth < 600) {
        return MobileProject();
      } else if (constraints.maxWidth > 1000) {
        return DesktopProject();
      } else {
        return TabletProject();
      } 
    });
  }
}
class DesktopProject extends StatelessWidget {
  const DesktopProject({super.key});

  @override
  Widget build(BuildContext context) {
    return     Column(
      children: [Container(
                  padding: EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text(
                        'Project',
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Bold',
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              SizedBox(height: 50,),
               Container(height: 250, width: double.infinity,
                 child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                         padding: EdgeInsets.only(
                       left: 150,
                     )),
               
                 Container(height: 200, width: 300,
                   child: Column(
                     children: [
                       Image.asset('lib/assest/port.jpeg'),
                    SizedBox(height: 10,),
                       Text(
                           '- Portfolio App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white))
                     ],
                   ),
                 ),
                 SizedBox(
                   width: 150,
                 ),
                 Container(height: 200, width: 300,
                   child: Column(
                     children: [
                     
                       Image.asset('lib/assest/del.jpeg'),
                       SizedBox(
                         height: 10,
                       ),
                       Text('- Delivery App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white))
                     ],
                   ),
                 ),
                 SizedBox(
                   width: 150,
                 ),
                 Container(height: 200, width: 300,
                   child: Column(
                     children: [

                       Image.asset('lib/assest/todo.jpeg'),
                       SizedBox(
                         height: 10,
                       ),
                       Text(
                           '- ToDo App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white))
                     ],
                   ),
                 ),
                                  ],
                 ),
               ),
             Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [Padding(padding: EdgeInsets.only(left: 100)),
                Text('- Source Code of these projects are on Github\n\n-Portfolio App \n-Delivery App \n-ToDo App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white)),
                               
              ],
             ),

                SizedBox(height: 150,),
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




class MobileProject extends StatelessWidget {
  const MobileProject({super.key});

  @override
  Widget build(BuildContext context) {
    return     Column(
      children: [Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Project',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Bold',
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
               Row(
                 children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 20,
                    )),
                    Container(height: 200, width: 300,
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                            top: 5,
                          )),
                          Image.asset('lib/assest/port.jpeg'),
                          SizedBox(
                            height: 5,
                          ),
                       Text(
                           '- Portfolio App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white))
                        ],
                      ),
                    ),
                 ],
               ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(
              left: 20,
            )),
            Container(height: 200, width: 300,
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 5,
                  )),
                  Image.asset('lib/assest/del.jpeg'),
                  SizedBox(
                    height: 5,
                  ),
      Text('- Delivery App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white))
                ],
              ),
            ),

          ],
        ),
              SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(
              left: 20,
            )),
            Container(height: 200, width: 300,
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 5,
                  )),
                  Image.asset('lib/assest/todo.jpeg'),
                  SizedBox(
                    height: 5,
                  ),
                       Text(
                           '- ToDo App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white))
                ],
              ),
            ),

          ],
        ),
        SizedBox(height: 30,),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [Padding(padding: EdgeInsets.only(left: 20)),
                Text('- Source Code of these projects are \n on Github\n\n-Portfolio App \n-Delivery App \n-ToDo App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white)),
                               
              ],
             ),
                SizedBox(height: 50,),
      Divider(
                  color: Colors.deepPurple,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
      
   ] );
  }
}


class TabletProject extends StatelessWidget {
  const TabletProject({super.key});

  @override
  Widget build(BuildContext context) {
    return     Column(
      children: [Container(
                  padding: EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text(
                        'Project',
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Bold',
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              SizedBox(height: 50,),
               Container(height: 250, width: double.infinity,
                 child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                         padding: EdgeInsets.only(
                       left: 10,
                     )),
                 Container(height: 200, width: 300,
                   child: Column(
                     children: [
                       Image.asset('lib/assest/port.jpeg'),
                    SizedBox(height: 10,),
                       Text(
                           '- Portfolio App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white))
                     ],
                   ),
                 ),
                 SizedBox(
                   width: 10,
                 ),
                 Container(height: 200, width: 300,
                   child: Column(
                     children: [
                     
                       Image.asset('lib/assest/del.jpeg'),
                       SizedBox(
                         height: 10,
                       ),
                       Text('- Delivery App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white))
                     ],
                   ),
                 ),
                 SizedBox(
                   width: 10,
                 ),
                 Container(height: 200, width: 300,
                   child: Column(
                     children: [

                       Image.asset('lib/assest/todo.jpeg'),
                       SizedBox(
                         height: 10,
                       ),
                       Text(
                           '- ToDo App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white))
                     ],
                   ),
                 ),
                                  ],
                 ),
               ),
             Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [Padding(padding: EdgeInsets.only(left: 10)),
                Text('- Source Code of these projects are on Github\n\n-Portfolio App \n-Delivery App \n-ToDo App',
                           style: TextStyle(
                               fontSize: 20,
                               fontFamily: 'Regular',
                               color: Colors.white)),
                               
              ],
             ),

                SizedBox(height: 150,),
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
