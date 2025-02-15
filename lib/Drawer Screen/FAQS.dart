import 'package:education/Constants/Appber.dart';
import 'package:education/Constants/CustomDrawer.dart';
import 'package:flutter/material.dart';

class FAQS extends StatefulWidget {
  const FAQS({super.key});

  @override
  State<FAQS> createState() => _FAQSState();
}

class _FAQSState extends State<FAQS> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        title: "Education App",
        scaffoldKey: _scaffoldKey,
      ),
      drawer: CustomDrawer(),

      body: Column(
        children: [
          SizedBox(height: 10,),
          Center(child: Text('Frequently Asked Questions (FAQ`s)')),
         SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.only(left: 10,right: 10),
           child: Container(
            height: MediaQuery.of(context).size.height/3, 
            width: MediaQuery.of(context).size.width/1, 
            decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(8)),

            child: Column(
              children: [
                 SizedBox(height: 8,),
                Text('Question : How to Enroll in a Course/Batch? \n (मैं किसी कोर्स या बैच में नामांकन कैसे कर सकता हूँ?)',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                Text('')
              ],
            ),
           ),
         )


        ],
      ),
    );
  }
}