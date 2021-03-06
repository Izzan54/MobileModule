import 'package:exercise3/login.dart';
import 'package:exercise3/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        //double.infinity make it big as possible
        //media query make it big as screen
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          // even space distribution
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Welcome Message",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/icon.png"))
                  ),
            ),
            Column(
              children: <Widget>[
                // login page
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  //defining the shape
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                //creating signup page
                SizedBox(height: 20,),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUpPage()));
                  },
                  color: Color(0xff0095FF),
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(50) 
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  )
              ],
            )
            //end of column
          ],
        ),
      ),
    ));
  }
}
