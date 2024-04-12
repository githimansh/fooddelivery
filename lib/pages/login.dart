import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/signup.dart';
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
        margin: EdgeInsets.only(top: 60, left: 20, right: 20,),
        child: Column(children: [
          Center(
            child: Image.asset("images/logo.png",
            width: MediaQuery.of(context).size.width/2, fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 50,),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
               decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),),
              child: Column(children: [
                SizedBox(
                  height: 30,
                  ),
                Text("Login", style: AppWidget.HeadlinetextFeidStyle(),
                ),
                SizedBox(
                  height: 30,
                  ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email', 
                  hintStyle: AppWidget.semiBoldTextFeidStyle(), 
                  prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(
                  height: 30,
                  ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                   hintStyle: AppWidget.semiBoldTextFeidStyle(), 
                  prefixIcon: Icon(Icons.password_outlined),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.topRight,
                  child: Text("Forget Password",
                   style: AppWidget.semiBoldTextFeidStyle(),
                   ),
                ),
                SizedBox(height: 100,),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    width: 170,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 61, 45, 114), borderRadius: BorderRadius.circular(20),),
                    child: Center(
                      child: Text("LOGIN", 
                      style: TextStyle(color: Colors.white, 
                      fontSize:18,
                       fontWeight: FontWeight.bold, ),),
                    ),
                  ),
                ),
              ],),
            ),
          ),
           SizedBox(height: 90,),
                GestureDetector(
                   onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp(),),
                     );
                  },
                  child: Text("Don't have an account? Sign up", style:AppWidget.semiBoldTextFeidStyle(),)),
        ],),
      ),
      ],
      ),
      ),
    );
  }
}