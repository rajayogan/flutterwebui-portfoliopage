import 'package:flutter_web/material.dart';
import 'package:responsiveportfolio/aboutme.dart';
import 'package:responsiveportfolio/responsivelayout.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 50.0,
                padding: EdgeInsets.only(top: 15.0, left: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hayley Morgan',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'counseling psychologist'
                    )
                  ],
                )
              ),
              ResponsiveLayout.isSmallScreen(context) ? SizedBox(width: 350.0) : 
              SizedBox(width: MediaQuery.of(context).size.width / 2 - 350.0),
              ResponsiveLayout.isSmallScreen(context) ?
              Image.network('assets/menu.png', width: 25, height: 25.0) :
              TabBar(
                controller: tabController,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.6),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'About Me',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'What I work with',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Consultation Format',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Contacts',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),

              SizedBox(width: 25.0),
              ResponsiveLayout.isSmallScreen(context) ? Container() :
              Container(
                height: 40.0,
              width: 125.0,
              child: RaisedButton(
                padding: EdgeInsets.all(10.0),
                onPressed: () {},
                color: Color(0xFF3F5494),
                textColor: Colors.white,
                child: Center(
                  child: Text(
                    'My Facebook'
                  ),
                ),
              ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 150.0,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(
              controller: tabController,
              children: [
                AboutMePage(),
                AboutMePage(),
                AboutMePage(),
                AboutMePage(),
                AboutMePage()
              ]
            )
          )
        ],
      ),
    );
  }
}
