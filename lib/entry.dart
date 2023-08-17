import 'package:easy_vahan/loginpage.dart';
import 'package:easy_vahan/register_page.dart';
import 'package:flutter/material.dart';

class Entry extends StatelessWidget {
  const Entry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Welcome',style: TextStyle(fontSize: 48,color: Colors.white),),
                  ],
                ),
                SizedBox(height: 16,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    width: 390,
                    height: 389,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/img.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )

                ],),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                        width: 340,
                        child: ElevatedButton(onPressed: (){ Navigator.push(context,
                            MaterialPageRoute(builder: (context) {return LoginPage();},));}, child: Text(
                          'Log in',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Exo 2',
                            fontWeight: FontWeight.w400,
                          ),
                        ),))
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 50,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Colors.black
                        ),
                        child: ElevatedButton(onPressed: (){ Navigator.push(context,
                            MaterialPageRoute(builder: (context) {return RegisterPage();},));}, child: Text(
                          'New User?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Exo 2',
                            fontWeight: FontWeight.w400,
                          ),
                        ),))
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
