import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imagesList = [
  'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
  'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
];

void main() {
  runApp(Blogs());
}

class Blogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(child: MyHomePage()),
      debugShowCheckedModeBanner: false,
      // home: ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final keywordField = TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(),
        labelText: 'Keywords',
      ),
    );
    final categoryField = TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(),
        labelText: 'Any Category',
      ),
    );
    final locationField = TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(),
        labelText: 'Location',
      ),
    );
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              width: 10,
              alignment: Alignment.topRight,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Usama Hafeez",
                  textAlign: TextAlign.center,
                ),
                accountEmail: Text(
                  "mhmd.usama.hafeez@gmail.com",
                  textAlign: TextAlign.center,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/smart-city-project-8d006.appspot.com/o/images%2F0d5bca54-e521-4311-bddf-8e9af133ecad?alt=media&token=22b8bc08-f758-4eff-8616-af50eca23de3"),
                ),
              ),
            ),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Jobs',
                      style: TextStyle(
                        fontSize: 16.0,

                        /*fontWeight: FontWeight.bold,*/
                      )),
                  leading: Icon(Icons.shopping_bag),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Tourism',
                      style: TextStyle(
                        fontSize: 16.0,
                        /*fontWeight: FontWeight.bold,*/
                      )),
                  leading: Icon(Icons.hearing),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Restaurants',
                      style: TextStyle(
                        fontSize: 16.0,
                        /*fontWeight: FontWeight.bold,*/
                      )),
                  leading: Icon(Icons.restaurant),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Hotel',
                      style: TextStyle(
                        fontSize: 16.0,
                        /*fontWeight: FontWeight.bold,*/
                      )),
                  leading: Icon(Icons.bed),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('News',
                      style: TextStyle(
                        fontSize: 16.0,
                        /*fontWeight: FontWeight.bold,*/
                      )),
                  leading: Icon(Icons.view_compact_outlined),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Videos',
                      style: TextStyle(
                        fontSize: 16.0,
                        /*fontWeight: FontWeight.bold,*/
                      )),
                  leading: Icon(Icons.video_call),
                )),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About',
                      style: TextStyle(
                        fontSize: 16.0,
                        /*fontWeight: FontWeight.bold,*/
                      )),
                  leading: Icon(Icons.help),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Contact Us',
                      style: TextStyle(
                        fontSize: 16.0,
                        /*fontWeight: FontWeight.bold,*/
                      )),
                  leading: Icon(Icons.contact_page_rounded),
                )),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0.0, 0, 32),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                    colors: [Colors.black12, Colors.black12]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState?.openDrawer();
                      }, // handle your image tap here
                      child: Image.asset(
                        'assets/ic_menu.png', color: Colors.lightBlueAccent,
                        fit: BoxFit.cover, // this is the solution for border
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),
                    /*ElevatedButton.icon(
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },

                      icon: Icon(
                        Icons.menu,
                        color: Colors.lightBlueAccent,
                      ), label: Text(""),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent)
                      ),

                    ),*/
                    Container(
                      width: 185,
                      height: 36,
                      decoration: BoxDecoration(),
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12.0,0, 12.0, 0),

                  child: CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true,
                       // enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState() {
                            _currentIndex = index;
                          }
                        }),

                    /*items: [Padding(padding: const EdgeInsets.all(8),
              child: imagesList.map((e) => Padding),
              )

              ],*/
                    items: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/ic_babyC.png',
                          fit: BoxFit.cover, // this is the solution for border
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/ic_bakrey.png',
                          fit: BoxFit.cover, // this is the solution for border
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/ic_beverages.png',
                          fit: BoxFit.cover, // this is the solution for border
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/ic_daalen.png',
                          fit: BoxFit.cover, // this is the solution for border
                        ),
                      ),
                    ],
                  )),


          ),//Slider,

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xC000000) , Color(0xC000000)
                ]
              )
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children:<Widget> [
                    SizedBox(height: 15),
                    keywordField,
                    SizedBox(height: 25),
                    categoryField,
                    SizedBox(height: 25),
                    locationField,
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          )

    ],
      ),
    );
  }
}
