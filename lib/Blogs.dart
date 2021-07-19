import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(Blogs());
}


class Blogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          child: MyHomePage()
      ),
      debugShowCheckedModeBanner: false,
     // home: ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();
  final String title = "Carousel Demo";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              width: 10,
              alignment: Alignment.topRight,
              child: UserAccountsDrawerHeader(
                accountName: Text("Usama Hafeez" , textAlign: TextAlign.center,),
                accountEmail: Text("mhmd.usama.hafeez@gmail.com" , textAlign: TextAlign.center,),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/smart-city-project-8d006.appspot.com/o/images%2F0d5bca54-e521-4311-bddf-8e9af133ecad?alt=media&token=22b8bc08-f758-4eff-8616-af50eca23de3"),
                ),
              ),

            ),


            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Home Page',style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.home),
                )
            ),
            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Account',style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.person),
                )
            ),


            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Orders',style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.shopping_basket),
                )
            ),


            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Categories',style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.dashboard),
                )
            ),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Orders',style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.shopping_basket),
                )
            ),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favourites',style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.favorite),
                )
            ),

            Divider(),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings',style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.settings),
                )
            ),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About',style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.help, color: Colors.blue),
                )
            ),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 32.0, 0, 0),
        child: Container(
            padding: const EdgeInsets.all(32),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton.icon(
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    icon: Icon(
                      Icons.menu,
                      color: Colors.lightBlue,
                    ),
                    splashColor: Colors.white,
                    color: Colors.white,
                    label: Text(""),
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    margin: const EdgeInsets.fromLTRB(0, 0, 32, 0),
                    //  alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(),
                    child: Image.asset(
                      "assets/ic_login.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )


        ),



      ),


    );
  }
}



