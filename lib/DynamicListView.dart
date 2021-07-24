import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/LatestJobs.dart';
import 'package:untitled/Models/JobsModel.dart';

class JobDynamic extends StatefulWidget {
  const JobDynamic({Key? key}) : super(key: key);
  @override
  _JobDynamics createState() => _JobDynamics();
}

class _JobDynamics extends State{

  List<JobModel> jobs = [
    // JobModel(jobTitle:"Android Dev", officeName:"Canva", officeLocation:"Rehman Plaza", jobType:"Full"),
    // JobModel(jobTitle:"IOS Dev", officeName:"DEV Sol", officeLocation:"Rehman Plaza", jobType:"Full"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: jobs.length,
          itemBuilder: (context, index) {
            return LatestJobs(jobModel: jobs[index],);
          }
      ),
    );
  }

}


/*body: ListView.builder(
itemCount: jobs.length,
itemBuilder: (context, index) => LatestJobs(jobModel: jobs[index],)
),*/


