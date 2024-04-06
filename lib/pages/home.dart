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
              SizedBox(
                height: 20,
                ),
              showItem(),
              SizedBox(height: 30,),
              Row(children: [
                Container(
                  child: Column(children: [
                    Image.asset("images/salad2.jpg",height: 150, width: 150, fit: BoxFit.cover ,),
                    Text(
                      "Veggie Taco hash",
                      style: AppWidget.semiBoldTextFeidStyle(),
                      ),
                    Text(
                      "Veggie Taco hash",
                      style: AppWidget.semiBoldTextFeidStyle(),
                      ),
                  ],),
                )
              ],)

      ],
      ),
      ),
    );
  }

  Widget showItem(){
    return Row(
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
                      child: Image.asset("images/icecream.jpg",
                       height: 40, width: 40, fit: BoxFit.cover,),
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
                      child: Image.asset("images/pizza.jpg",
                       height: 40, width: 40, fit: BoxFit.cover,),
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
                      child: Image.asset("images/salad.jpg",
                       height: 40, width: 40, fit: BoxFit.cover, ),
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
                      child: Image.asset("images/burger.jpg",
                       height: 40, width: 40, fit: BoxFit.cover,),
                    ),
                  ),
                ),
              ],
               );
  }
}