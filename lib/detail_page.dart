import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterswipper/Data.dart';
import 'package:flutterswipper/colors.dart';

class DetailPage extends StatelessWidget {

  final PlanetInfo planetInfo;

  const DetailPage({
    Key key,
    this.planetInfo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 300),
                          Text(
                            planetInfo.name,
                            style: TextStyle(
                              fontFamily: 'Avensir',
                              fontSize: 56,
                              color: primary,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Football Club',
                            style: TextStyle(
                              fontFamily: 'Avensir',
                              fontSize: 32,
                              color: primary,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Divider(color: Colors.black38),
                          SizedBox(height: 32),
                          Text(
                            planetInfo.description ?? '',
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'Avensir',
                              fontSize: 32,
                              color: content,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 32),
                          Divider(color: Colors.black38)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text(
                        'Gallery',
                        style: TextStyle(
                          fontFamily: 'Avensir',
                          fontSize: 56,
                          color: primary,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      height: 250,
                      padding: const EdgeInsets.only(left: 32.0),
                      child: ListView.builder(
                        itemCount: planetInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: AspectRatio(
                              aspectRatio: 1.5,
                              child: Image.asset(
                                planetInfo.images[index],
                                fit: BoxFit.cover,
                                //width: 200,
                                //height: 200,
                              ),
                            ),
                          );
                        }
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 0,
                child: Hero(
                    tag: planetInfo.position,
                    child: Image.asset(planetInfo.iconImage, width: 200, height: 200,)
                ),
              ),
              Positioned(
                  top: 60,
                  left: 32,
                  child: Text(
                    planetInfo.position.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Avenir',
                      fontSize: 247,
                      color: primary.withOpacity(0.08),
                    ),
                    textAlign: TextAlign.left,
                  ),
              ),
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: (){
                    Navigator.pop(context);
                  },
              )
            ],
          )
      ),
    );
  }
}
