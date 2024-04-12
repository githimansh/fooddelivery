import 'package:flutter/material.dart';
import 'package:fooddelivery/widget/content_model.dart';
import 'package:fooddelivery/widget/widget_support.dart';

class Onboard extends StatefulWidget {
  const Onboard ({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
} 

class _OnboardState extends State<Onboard> {

  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
   _controller= PageController(initialPage: 0);

    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
    PageView.builder(
      controller: _controller,
      itemCount: contents.length,
      onPageChanged: (int index){
        setState(() {
          currentIndex= index;
        });
      },
      itemBuilder: (_, i){
      return Padding(
        padding: EdgeInsets.all(20),
      child: Column(
        children: [
       Image.asset(
        contents[i].image,
       height: 450,
       width: MediaQuery.of(context).size.width/1.5, 
       fit: BoxFit.fill,
       ),
       SizedBox(height: 40,),
        Text(contents[i].title,
         style: AppWidget.semiBoldTextFeidStyle(),
         ),
         SizedBox(height: 20,),
         Text(contents[i].description, 
         style: AppWidget.LightTextFeidStyle(),
         ),
      ],
      ),
      );
    }
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(contents.length, (index) =>
            buildDot(index, context),
           ), 
        ),
      ),
      ],),
    );
  }
  Container buildDot (int index, BuildContext context){
    return Container(
      height: 10,
      width: currentIndex==index?18:7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
       color: Colors.black38,),
    );
  }
}