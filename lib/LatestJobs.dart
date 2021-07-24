import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Models/JobsModel.dart';
import 'package:untitled/Registration.dart';
import 'MainDashboard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Latest Jobs",

  ));
}

class LatestJobs extends StatelessWidget {

  const LatestJobs({Key? key, required this.jobModel}) : super(key: key);
  final  JobModel jobModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          _navigateToDashBoard(context);
        },
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
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
                  title: Text( jobModel.jobTitle,
                   /* "SENIOR LARAVEL DEVELOPER",*/
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
                        jobModel.officeName,
                        /*"Envato",*/
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
                        jobModel.officeLocation,
                        /*"Sargodha, Punjab",*/
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
                          child: Text(jobModel.jobType,
                           /* "Full Time",*/
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
    );
  }
}

void _navigateToDashBoard(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => Registration()));
}
