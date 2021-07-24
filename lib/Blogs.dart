import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/LatestJobs.dart';
import 'package:untitled/Models/JobsModel.dart';

// void main() {
//   runApp(Blogs());
// }

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
  List<JobModel> jobs = [
    JobModel(jobTitle:"Android Dev", officeName:"Canva", officeLocation:"Rehman Plaza", jobType:"Full" ),
       JobModel(jobTitle:"Android Dev", officeName:"Canva", officeLocation:"Rehman Plaza", jobType:"Full" ),
  ];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            Container(
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
            Container(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                    ),
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
            ), //Slider,
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xC000000), Color(0xC000000)])),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: <Widget>[
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
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xC000000), Color(0xC000000)])),
              //  margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                child: Text("Latest Jobs",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              ),
            ),

            Container(
              child: InkWell(
                onTap: () {
                  // _navigateToDashBoard(context);
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            child: Image.asset(
                              "assets/ic_login.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                          title: Text(
                            "SENIOR LARAVEL DEVELOPER",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Row(
                            children: [
                              Icon(
                                Icons.home_outlined,
                                color: Colors.black,
                                size: 16,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Envato",
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.location_pin,
                                color: Colors.blueGrey,
                                size: 16,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Sargodha, Punjab",
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.lightBlueAccent,
                                      Colors.lightBlueAccent
                                    ])),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    "Full Time",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),

                              //ElevatedButton(onPressed: () { }, child: Text("Full Time", style: TextStyle(fontSize: 10),),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),

      ),
    );
  }
}
/*Container(
            child: ListView.builder(itemCount: jobs.length ,
                itemBuilder: (context , index)=>LatestJobs(jobModel: jobs[index],),
            ),

          ),*/

