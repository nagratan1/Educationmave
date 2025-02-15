import 'package:education/Constants/Appber.dart';
import 'package:flutter/material.dart';

class Testpurchased extends StatefulWidget {
  const Testpurchased({super.key});

  @override
  State<Testpurchased> createState() => _TestpurchasedState();
}

class _TestpurchasedState extends State<Testpurchased> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue[200],
      title: Text('My Purchased Tests / Quiz',style: TextStyle(fontSize: 15),),
      leading: InkWell(
        onTap: (){
           Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back,color: Colors.black,)),
    ),body: Center(
      child: Text('No Test Series Available',style: TextStyle(color: Colors.grey),),
    ),
    );
  }
}