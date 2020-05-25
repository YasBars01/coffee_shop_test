import 'package:coffee_shop_test/details_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop Pproject',
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  'Welcome, Yas',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      //color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage('assets/model.jpg'),
                          fit: BoxFit.cover,
                      )
                    ),
                ),
              ),
            ],
          ), // Row - End of Header
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Container(
              child: Text(
                'Let\'s select the best taste for your next coffee break!',
                style: TextStyle(
                  fontFamily: 'nunito',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFB0AAA7),
                ),
              ),
            ),
          ), // Padding - End of Subtitle
          SizedBox(height: 25.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Taste of the week',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color: Color(0xFF473D3A)),
                ),
              Padding(
                padding: const EdgeInsets.only(right:15.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 15.0,
                    color:  Color(0xFFCEC7C4)),
                  ),
                ),
            ],
          ), // Row - End of Taste of the week
          SizedBox( height: 15.0 ),
          Container(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _coffeeListCard(
                  'assets/starbucks.png',
                  'Caffe Misto',
                  'Coffeeshop',
                  'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                  '\$4.99',
                  false
                ),
                _coffeeListCard(
                  'assets/starbucks.png',
                  'Caffe Latte',
                  'BrownHouse',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    '\$3.99',
                    false
                ),
              ],
            ),
          ), // Container - end of Coffee List View
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Explore nearby",
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color: Color(0xFF473D3A),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  "See all",
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 15.0,
                    color: Color(0xFFCEC7C4)),
                  ),
                ),
            ],
          ),
          SizedBox(height: 15.0),
          Container(
            height: 125.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildImage('assets/coffee.jpg'),
                _buildImage('assets/coffee2.jpg'),
                _buildImage('assets/coffee3.jpg'),
              ],
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName, String description, String price, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(                                                       // Container for horizontal scroll for "Taste of the week"
        height: 300.0,
        width: 225.0,
        //color: Colors.red,
        child: Column(
          children: <Widget>[
            Stack(                                                            // Stacks Widgets, first widgets go to bottom
              children: [
                Container(
                  height: 335.0,
                  //color: Colors.blue,
                ),
                Positioned(                                                   // Creates the Small square with all text contents
                  top: 75.0,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0, right: 20.0),
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDAB68C)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          shopName + '\'s',
                          style:
                          TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ), // Text - CoffeeShop name
                        SizedBox(height: 10.0),
                        Text(
                          coffeeName,
                          style: TextStyle(
                            fontFamily: 'varela',
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ), // Text - Coffee Name
                        SizedBox(height: 10.0),
                        Text(
                          description,
                          style:
                          TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),  // Text - Description
                        SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              price,
                              style:
                              TextStyle(
                                fontFamily: 'varela',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3A4742),
                              ),
                            ), // Text - Price
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon( Icons.favorite,
                                color: isFavorite ? Colors.red : Colors.grey,
                                size: 15.0
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ), // Positioned - Creates the Small square with all text contents
                Positioned(                                                   // Adds the Coffee cup image
                  left: 60.0,
                  top: 25.0,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.contain
                      ),
                    ),
                  ),
                ), // Positioned - Adds the Coffee cup image on top of Small square
                /*Positioned(
                  top: 100.0,
                  left: 10.0,
                  child:
                  Container(
                    color: Colors.red,
                    child: Text(
                        "hi",
                    ),
                  ),
                ),*/ // Positioned - Adds 'hi' on top of Small square and Text contents
              ],
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsPage()
                ));
              },
              child: Container(
                height: 50.0,
                width: 225.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFF473D3A),
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildImage(String imgPath){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 100.0,
        width: 175.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage ( image: AssetImage(imgPath), fit: BoxFit.cover)
        ),
      ),
    );
  }
}