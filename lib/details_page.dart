import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailsPage extends StatefulWidget{
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView( children: [
      Stack(
          children: <Widget>[
            Container(                                                        // Container - body pink bg
              height: MediaQuery.of(context).size.height - 20.0,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFF3B2B7),

            ), // Container - body pink bg
            Positioned(// Bottom white divider
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                height: MediaQuery.of(context).size.height / 2 - 20.0,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0)),
                  color: Colors.white ),
                /*child:  Container(
                  height: (MediaQuery.of(context).size.height / 2) - 50.0,
                  width: MediaQuery.of(context).size.width ,
                  //color: Colors.red,
                  child: ListView( children: [
                    Text(
                      'Preparation time',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726B68)
                      ),
                    ),
                    SizedBox(height: 7.0),
                    Text(
                      '5 min',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Color(0XFFC6C4C4)),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 1.0,
                      color: Color(0xFFC6C4C4),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Ingredients',
                      style: TextStyle(
                        fontFamily: 'nunito',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF726B68),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 110.0,
                      //width: 100.0,
                      //color: Colors.orangeAccent,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildIngredientItem(
                              'Water',
                              Icon(Feather.droplet,
                                  size: 10.0, color: Colors.white),
                              Color(0XFF6FC5DA)),
                          buildIngredientItem(
                              'Brewed Espresso',
                              Icon(Feather.target,
                                  size: 18.0, color: Colors.white),
                              Color(0xFF615955)),
                          buildIngredientItem(
                              'Sugar',
                              Icon(Feather.box,
                                  size: 18.0, color: Colors.white),
                              Color(0xFFF39595)),
                          buildIngredientItem(
                              'Toffee Nut Syrup',
                              Icon(MaterialCommunityIcons.peanut_outline,
                                  size: 18.0, color: Colors.white),
                              Color(0xFF8FC28A)),
                          buildIngredientItem(
                              'Natural Flavors',
                              Icon(MaterialCommunityIcons.leaf_maple,
                                  size: 18.0, color: Colors.white),
                              Color(0xFF3B8079)),
                          buildIngredientItem(
                              'Vanilla Syrup',
                              Icon(MaterialCommunityIcons.flower_tulip_outline,
                                  size: 18.0, color: Colors.white),
                              Color(0xFFF8B870)),
                          SizedBox(width: 25.0)
                        ],
                      ),
                    ),
                    Container(
                      height: 1.0,
                      color: Color(0xFFC6C4C4),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Nutrition Information',
                      style: TextStyle(
                        fontFamily: 'nunito',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF726B68),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          'Calories',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            color: Colors.brown,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '250',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          'Proteins',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            color: Colors.brown,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '10g',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          'Caffeine',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            color: Colors.brown,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '150mg',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      height: 1.0,
                      color: Color(0xFFC6C4C4),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.only(right: 25.0, left: 25.0),
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            color: Colors.brown
                        ),
                        child: Center(
                          child: Text( 'Make Order',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0)
                  ],

                  ),
                ),*/ )
            ), // Bottom white divider
            Positioned(                                                       // Indent for Text
              top: MediaQuery.of(context).size.height / 2 + 25.0,
              left: 15.0,
              right: 15.0,
              child: Container(
                height: (MediaQuery.of(context).size.height / 2) - 50.0,
                width: MediaQuery.of(context).size.width ,
                //color: Colors.red,
                child: ListView( children: [
                  Text(
                    'Preparation time',
                    style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF726B68)
                    ),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    '5 min',
                    style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 14.0,
                      color: Color(0XFFC6C4C4)),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: 1.0,
                    color: Color(0xFFC6C4C4),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF726B68),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 110.0,
                    //width: 100.0,
                    //color: Colors.orangeAccent,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildIngredientItem(
                            'Water',
                            Icon(Feather.droplet,
                              size: 10.0, color: Colors.white),
                            Color(0XFF6FC5DA)),
                        buildIngredientItem(
                            'Brewed Espresso',
                            Icon(Feather.target,
                                size: 18.0, color: Colors.white),
                            Color(0xFF615955)),
                        buildIngredientItem(
                            'Sugar',
                            Icon(Feather.box,
                                size: 18.0, color: Colors.white),
                            Color(0xFFF39595)),
                        buildIngredientItem(
                            'Toffee Nut Syrup',
                            Icon(MaterialCommunityIcons.peanut_outline,
                                size: 18.0, color: Colors.white),
                            Color(0xFF8FC28A)),
                        buildIngredientItem(
                            'Natural Flavors',
                            Icon(MaterialCommunityIcons.leaf_maple,
                                size: 18.0, color: Colors.white),
                            Color(0xFF3B8079)),
                        buildIngredientItem(
                            'Vanilla Syrup',
                            Icon(MaterialCommunityIcons.flower_tulip_outline,
                                size: 18.0, color: Colors.white),
                            Color(0xFFF8B870)),
                        SizedBox(width: 25.0)
                      ],
                    ),
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xFFC6C4C4),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Nutrition Information',
                    style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF726B68),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Text(
                        'Calories',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Colors.brown,
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Text(
                        '250',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Text(
                        'Proteins',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Colors.brown,
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Text(
                        '10g',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Text(
                        'Caffeine',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Colors.brown,
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Text(
                        '150mg',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    height: 1.0,
                    color: Color(0xFFC6C4C4),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.only(right: 25.0, left: 25.0),
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        color: Colors.brown
                      ),
                      child: Center(
                        child: Text( 'Make Order',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0)
                ],

                ),
              ),
            ),
          ]
      ),
        ],
        )
      );

  }

  buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      Column(
        children: [
          Container(
            height:50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: bgColor,
            ),
            child: iconName,
          ),
          SizedBox(height: 4.0),
          Container(
            width: 60.0,
            child: Center(
              child: Text(name,
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'nunito',
                  fontSize: 12.0,
                  color: Color(0xFFC2C0C0)
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}
