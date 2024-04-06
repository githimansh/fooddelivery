import 'package:flutter/material.dart';
import 'package:fooddelivery/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool icecream=false, pizza=false, salad=false, burger=false;
  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hello Himanshu",
             style: AppWidget.boldtextFeidStyle()
              ),
               Container(
                padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(color: Colors.black, borderRadius:BorderRadius.circular(8)),
          child: const Icon(
            Icons.shopping_cart,
             color: Colors.white,),
        )
          ],
        ),
        SizedBox(height: 20,),
       Text(
              "Delicious Food",
             style: AppWidget.HeadlinetextFeidStyle()
              ),
       Text(
              "Discover and Get Great Food",
             style: AppWidget.LightTextFeidStyle()
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
                GestureDetector(
                  onTap: (){
                    icecream=true;
                    pizza=false;
                    salad=false;
                    burger=false;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: icecream?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.network("https://www.shutterstock.com/image-illustration/vanilla-ice-cream-cone-isolated-260nw-421361251.jpg",
                       height: 40, width: 40, fit: BoxFit.cover, color: icecream? Colors.white: Colors.black,),
                    ),
                  ),
                ),
               GestureDetector(
                  onTap: (){
                    icecream=false;
                    pizza=true;
                    salad=false;
                    burger=false;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: pizza?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.network("https://t3.ftcdn.net/jpg/00/27/57/96/360_F_27579652_tM7V4fZBBw8RLmZo0Bi8WhtO2EosTRFD.jpg",
                       height: 40, width: 40, fit: BoxFit.cover, color: pizza? Colors.white: Colors.black,),
                    ),
                  ),
                ),
               
               GestureDetector(
                  onTap: (){
                    icecream=false;
                    pizza=false;
                    salad=true;
                    burger=false;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: salad?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.network("https://t3.ftcdn.net/jpg/00/27/57/96/360_F_27579652_tM7V4fZBBw8RLmZo0Bi8WhtO2EosTRFD.jpg",
                       height: 40, width: 40, fit: BoxFit.cover, color: salad? Colors.white: Colors.black,),
                    ),
                  ),
                ),
               
               GestureDetector(
                  onTap: (){
                    icecream=false;
                    pizza= false;
                    salad=false;
                    burger= true;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: burger?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.network("https://t3.ftcdn.net/jpg/00/27/57/96/360_F_27579652_tM7V4fZBBw8RLmZo0Bi8WhtO2EosTRFD.jpg",
                       height: 40, width: 40, fit: BoxFit.cover, color: burger? Colors.white: Colors.black,),
                    ),
                  ),
                ),
              ],)

      ],
      ),
      ),
    );
  }
}