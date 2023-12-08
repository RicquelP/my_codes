import 'package:flutter/material.dart';
import 'package:scanme_app/Screens/Splash2.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,right: 330),
            child: Icon(Icons.arrow_back_ios,color: Colors.indigo,),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 70,right: 100),
            child: Text('Your Privacy is our',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.indigo)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: Text('Priority.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.indigo),),
          ),

         Padding(
           padding: const EdgeInsets.only(top: 40,right: 80),
           child: Column(
            children: [
               Text("  That's why we only store your data on",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 16),),
             Text("our ISO-certified services in the EU.",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 16))
            ],
           ),
         ),

            Padding(
           padding: const EdgeInsets.only(top: 40,right: 80),
           child: Column(
            children: [
               Text("     We also anonymize your scans before",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 16),),
             Text("our App can use them to learn and",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 16)),
             Padding(
               padding: const EdgeInsets.only(right: 180),
               child: Text("improve.",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 16)),
             )
            ],
           ),
         ),

         
         Padding(
           padding: const EdgeInsets.only(top: 140,right: 120),
           child: Column(
            children: [
               Text("you can find the long version here:",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                       
                        border: Border.all(
                        width:2.0,
                        color: Colors.indigo
                      )
                      ),
                      child: Center(
                        child: Container(
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.indigo
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text('i need and accept the'),
                            Text('Terms and',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Row(
                          children: [
                            Text('Conditions',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
                            Text(' and the'),
                            Text(' Privacy Policy',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo
                            ),)
                          ],
                        )
                      ],
                    )
                  ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 100,left: 40),
                 child: SizedBox(
                 width: 300,
                 height: 60,
                 child: ElevatedButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: ((context) => Splash2())));
                   },
                   child: Text('Get Started',style: TextStyle(fontSize: 25),),
                   style: ElevatedButton.styleFrom(
                     primary: Colors.indigo,  // Background color
                     onPrimary: Colors.white,  // Text color
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30),  // Rounded corners
                     ),
                   ),
                 ),
               ),
               )

            
            ],
           ),
         ),
        ],
      ),
    );
  }
}