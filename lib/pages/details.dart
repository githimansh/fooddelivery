import 'package:flutter/material.dart';
import 'package:fooddelivery/widget/widget_support.dart';

class Details extends StatefulWidget{
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 50,
           left: 20,
            right: 20),
         child:Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
             color: Colors.black,),
             ),
             Image.asset("images/salad3.jpg",
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height/3,
             fit: BoxFit.fill,
             ),
             SizedBox(height: 15,),
             Row(
              children: [
              Column(
                children: [
                  Text("Mediterranean",
                   style: AppWidget.boldtextFeidStyle(),),
                  Text("Chickpea Salad",
                   style: AppWidget.boldtextFeidStyle(),),
                ],
              ),
              Spacer(),
                  GestureDetector(
                    onTap: (){
                      if(a>1){
                        --a;
                      }
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8),),
                      child: Icon(Icons.remove, 
                      color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(a.toString(), style: AppWidget.boldtextFeidStyle(),),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      ++a;
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black,
                       borderRadius: BorderRadius.circular(8),),
                      child: Icon(Icons.add, 
                      color: Colors.white,
                      ),
                    ),
                  ),
             ],
             ),
             SizedBox(height: 18,),
             Text("A refreshing vegetable salad using all different kinds of vegetables. You can use whatever you like, but the tomatoes and cucumbers make it taste great. It is very much like an Israeli salad.",
            maxLines: 4,
             style: AppWidget.LightTextFeidStyle(),
             ),
             SizedBox(height: 25,),
             Row(children: [
              Text("Delivery Time", style: AppWidget.semiBoldTextFeidStyle(),),
              SizedBox(width: 30,),
              Icon(Icons.alarm, color: Colors.black,),
              SizedBox(width: 5,),
              Text("30min", style: AppWidget.semiBoldTextFeidStyle(),),
             ],),
             Spacer(),
             Padding(
               padding: const EdgeInsets.only(bottom: 40),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("Total Price", style: AppWidget.semiBoldTextFeidStyle(),),
                Text("\$28", style: AppWidget.HeadlinetextFeidStyle(),),
                ],), 
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10),),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 16,),),
                    SizedBox(width: 30,),
                    Container(

                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.grey, borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                  ],
                  ),
                ), 
               ],),
             ),
        ], ),
      ),
    );
  }
}