import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterswipper/Data.dart';
import 'package:flutterswipper/colors.dart';
import 'package:flutterswipper/detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEnd,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [gradientStart, gradientEnd],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.7]
          ),
        ),
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0, 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Explore',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 44,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      DropdownButton(
                        items: [
                          DropdownMenuItem(
                              child: Text(
                                'Solar System',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 24,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              )
                          )
                        ],
                        onChanged: (value){},
                        icon: Icon(Icons.arrow_drop_down),
                        underline: SizedBox(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  height: 400,
                  child: Swiper(
                    itemCount: planets.length,
                    itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                    layout: SwiperLayout.STACK,
                    pagination: SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                          activeSize: 20,
                          space: 8
                      ),
                    ),
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, PageRouteBuilder(
                            pageBuilder: (context, a, b) => DetailPage(
                              planetInfo: planets[index]
                            )
                          ));
                        },
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Card(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32)
                                  ),
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 100),
                                        Text(
                                          planets[index].name,
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 44,
                                            color: Color(0xff47455f),
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          'Football Club',
                                          style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 23,
                                              color: secondary,
                                              fontWeight: FontWeight.bold
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(height: 22),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'Know more',
                                              style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: 23,
                                                  color: secondary,
                                                  fontWeight: FontWeight.bold
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: secondary,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Positioned(
                              child: Hero(
                                tag: planets[index].position,
                                child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(70,0,0,0),
                                      child: Image.asset(planets[index].iconImage, width: 140, height: 150, fit: BoxFit.fill),
                                    ))
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  //child: ,
                )
              ],
            )
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0),
          ),
          color: nav,
        ),
        padding: EdgeInsets.all(1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: (){}
            ),
            IconButton(
                icon: Icon(Icons.accessibility),
                onPressed: (){}
            ),
            IconButton(
                icon: Icon(Icons.description),
                onPressed: (){}
            )
          ],
        ),
      ),
    );
  }
}

