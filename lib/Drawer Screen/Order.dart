import 'package:education/Constants/Appber.dart';
import 'package:education/Constants/CustomDrawer.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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

      body: Center(
        child: Text('No Order Available',style: TextStyle(color: Colors.grey),),
      ),
    );
  }
}