import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flip_card/flip_card.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var shape = BoxShape.circle;
  void _shapechange() {
    setState(() {
      shape = BoxShape.rectangle;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            decoration: BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      "images/1.jpg")
              ),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 400.0,
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL, // default
                          front: Material(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3).withOpacity(0.2),
                            child: _nameDetailsContainer(),
                          ),
                          back: Material(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3),
                            child: _socialContainer(),
                          ),
                        ),


                      ),
                    ),
                  ),
                ],
              ),
            ),

          )
        ],),
    );
  }

  Widget _nameDetailsContainer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
               Container(
                 height: 130.0,
                 width: MediaQuery
                .of(context)
                .size
                .width,

                 child: Column(children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(top: 15.0),
                     child: GestureDetector(
                       onTap: () {
                         _shapechange();
                       },
                     child: ListTile(
                       leading: Container(
                           width: 60.0,
                           height: 300.0,
                           decoration: new BoxDecoration(
                               shape: BoxShape.circle,
                               image: new DecorationImage(
                                   fit: BoxFit.fill,
                                   image: AssetImage(
                                  "images/apoorv.jpg")
                               )
                           )
                       ),
                       title: Padding(
                         padding: const EdgeInsets.only(top: 5.0),
                         child: Text('Apoorv Maheshwari', style: TextStyle(
                           color: Color(0xffffffff),
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold,
                         )),
                       ),
                       subtitle: Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text('Android Developer', style: TextStyle(
                           color: Color(0xffffffff),
                           fontSize: 15.0,
                         ),),
                       ),
                     ),
                   ),
                   )],),
                 decoration: BoxDecoration(
                   color: Color(0xffff520d).withOpacity(0.9),
                   borderRadius: BorderRadius.circular(20.0),
                 ),
               ),
               Container(
                 child: _detailsContainer(),
               ),
             ],
          ),
      );
  }

  Widget _socialContainer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 130.0,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ListTile(
                  leading: Container(
                      width: 60.0,
                      height: 300.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                "images/apoorv.jpg")
                          )
                      )
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 18.0),
                    child: Text('Social Links', style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 18.0, right: 18.0),
                    child: Text('', style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20.0,
                    ),),
                  ),
                ),
              ),
            ],),
            decoration: BoxDecoration(
              color: Color(0xffff0d41).withOpacity(0.9),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Container(
            child: _socialdetailsContainer(),
          ),
        ],
      ),
    );
  }

  Widget _detailsContainer() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Text(
            'I have keen interest in Web and Application Development. I have also done various courses in AI, Machine Learning and Blockchain. Along wih this, I am a contributor on GeeksforGeeks.',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 15.0,
            ),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(child: Icon(
                      FontAwesomeIcons.mapMarkerAlt, color: Color(0xffff520d))),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(child: Text('Aligarh, U.P.', style: TextStyle(
                      color: Color(0xffff520d),
                      fontSize: 20.0,
                    ),),),
                  ),
                ],)
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),

           child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(child: Icon(
                      FontAwesomeIcons.envelope, color: Color(0xffff520d))),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      child: Text('raghavapoorv@yahoo.in', style: TextStyle(
                        color: Color(0xffff520d),
                        fontSize: 20.0,
                      ),),),
                  ),
                ],),

          ),
        ),
      ],);
  }


  Widget _socialdetailsContainer() {
    return Column(
      children: <Widget>[
        SizedBox(width: 10.0,),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(
                children: <Widget>[
                  Container(child: Icon(
                    FontAwesomeIcons.twitter, color: Color(0xffff0d41),
                    size: 30.0,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                    child: Container(
                      child: Text('/apoorv', style: TextStyle(
                        color: Color(0xffff0d41),
                        fontSize: 20.0,
                      ),),),
                  ),
                ],)
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(children: <Widget>[
                Container(child: Icon(
                  FontAwesomeIcons.github, color: Color(0xffff0d41),
                  size: 30.0,)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/Apoorv-cloud', style: TextStyle(
                      color: Color(0xffff0d41),
                      fontSize: 20.0,),),),
                ),
              ],)
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(children: <Widget>[
                Container(child: Icon(
                  FontAwesomeIcons.linkedin, color: Color(0xffff0d41),
                  size: 30.0,)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/Apoorv', style: TextStyle(
                      color: Color(0xffff0d41),
                      fontSize: 20.0,
                    ),),),
                ),
              ],)
          ),),

        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(children: <Widget>[
                Container(child: Icon(
                  FontAwesomeIcons.facebook, color: Color(0xffff0d41),
                  size: 30.0,)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/maheshwari_apoorv', style: TextStyle(
                      color: Color(0xffff0d41),
                      fontSize: 20.0,
                    ),),),
                ),
              ],)
          ),),

      ],);
  }
}