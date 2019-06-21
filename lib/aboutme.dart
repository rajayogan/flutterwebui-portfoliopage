import 'package:flutter_web/material.dart';
import 'package:responsiveportfolio/responsivelayout.dart';

class AboutMePage extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left:50.0, top: 75.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('01 - HELLO',
                  style: TextStyle(
                    
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('MY NAME\'S HAYLEY MORGAN',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 11.0,
                  ),
                  ),
                  SizedBox(height: 50.0),
                  Text('Tell about',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('the difficulties',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('and find a solution.',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 50.0),
                  Container(
                    width: 500.0,
                    child: Text('Everyone has answers to his questions. No other people advice and experience is needed. The main thing is to hear yourself.',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    fontSize: 17.0,
                  ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Text('Take the first step to harmony within yourself',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 50.0),
                  Row(
                    children: <Widget>[
                      Container(
              height: 60.0,
              width: 125.0,
              child: RaisedButton(
                padding: EdgeInsets.all(10.0),
                onPressed: () {},
                color: Color(0xFFAEC9A3),
                textColor: Colors.white,
                child: Center(
                  child: Text(
                    'Write to Me'
                  ),
                ),
              ),
            ),

            SizedBox(width: 25.0),
            Text('or',
            style: TextStyle(
                    fontSize: 11.0,
                    fontFamily: 'Montserrat'
                  ),
            ),
            SizedBox(width: 25.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Call my phone',
            style: TextStyle(
                    fontSize: 11.0,
                    fontFamily: 'Montserrat'
                  ),
            ),
            SizedBox(height: 10.0),
            Text('+1 (232) 123-4567',
            style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                  ),
            ),
              ],
            )

                    ],
                  )
                ],
              ),
              ResponsiveLayout.isSmallScreen(context)?SizedBox(width: 25.0):SizedBox(width: 250.0),
              ResponsiveLayout.isSmallScreen(context) ? Container() : Stack(
                              children: [
                  Container(
                  color: Colors.blue,
                  height: 700.0,
                  width: 500.0,
                  child: Image.network("assets/fonts/model.jpg", fit: BoxFit.cover)
                  
                ),
                Positioned(
                    top: 650.0,
                                  child: Container(
                    color: Colors.black,
                    height: 50.0,
                    width: 150.0,
                    child: Center(
                      child: Text('Something about me',
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                    )
                    
                  ),
                ),
                              ]
              )
            ],
          ),
        )
      ],
    );
  }
}