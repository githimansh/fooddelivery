import 'package:flutter/material.dart';
import 'package:fooddelivery/widget/widget_support.dart';

class LogIn extends StatefulWidget{
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2.5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:[
              Color.fromRGBO(76, 175, 80, 1),
              Color.fromRGBO(67, 155, 80, 10),
          ],),),
        ),
      Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white,
         borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), 
          topRight: Radius.circular(40),
           ),
          ),
        child: Text(""),
      ),
      Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(children: [
          Center(
            child: Image.asset("images/logo.png",
            width: MediaQuery.of(context).size.width/2, fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Column(children: [
              Text("Login", style: AppWidget.semiBoldTextFeidStyle(),),
            ],),
          ),
        ],),
      ),
      ],
      ),
      ),
    );
  }
}