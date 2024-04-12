import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/details.dart';
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
                margin: EdgeInsets.only(right: 20),
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
              Container(
                margin: EdgeInsets.only(right: 20),
                child: showItem()),
              SizedBox(height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Details(),),);
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Image.asset("images/salad3.png",
                            height: 150, 
                            width: 150,
                             fit: BoxFit.cover,
                             ),
                            Text("Veggie Taco hash",
                              style: AppWidget.semiBoldTextFeidStyle(),
                              ),
                              SizedBox(height: 5,),
                            Text( "Fresh and healthy",
                              style: AppWidget.LightTextFeidStyle(),
                              ),
                              SizedBox(height: 5,),
                              Text("\$25", 
                              style: AppWidget.semiBoldTextFeidStyle(),)
                          ],),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Image.asset("images/salad2.png",
                          height: 150, 
                          width: 150,
                           fit: BoxFit.cover,
                           ),
                          Text("Mix Veg Salad",
                            style: AppWidget.semiBoldTextFeidStyle(),
                            ),
                            SizedBox(height: 5,),
                          Text( "Spicy with Onion",
                            style: AppWidget.LightTextFeidStyle(),
                            ),
                            SizedBox(height: 5,),
                            Text("\$25", style: AppWidget.semiBoldTextFeidStyle(),
                            ),
                        ],),
                      ),
                    ),
                  )
                ],
                ),
              ),
              SizedBox(height: 30,
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                   child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Image.asset("images/salad4.png",
                    height: 120, width: 120, fit: BoxFit.cover,
                    ),
                    SizedBox(width: 20,),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("Mediterrenean Chickpea Salad", style: AppWidget.semiBoldTextFeidStyle(),),
                        ),
                        SizedBox(height: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("Honey goot cheese", style: AppWidget.LightTextFeidStyle(),),
                        ),
                        SizedBox(height: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("\$28", style: AppWidget.semiBoldTextFeidStyle(),),
                        ),
                    ],
                    ),
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
                      decoration: BoxDecoration(color: icecream?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10),),
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