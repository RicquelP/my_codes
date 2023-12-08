import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scanme_app/Screens/ScanMe.dart';

import 'package:scanme_app/main.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
    bool _isAnimate = false;
     bool isSwitched = false;

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isAnimate = true;
      });
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body:Stack(
        children: [
        AnimatedPositioned(
            top: mq.height * .15,
            right: _isAnimate ? mq.width * .25: -mq.width * .5,
            width: mq.width * .5,
            duration: Duration(seconds: 1),
            child: Image.asset('images/camera.png'),
          ),

          Positioned(
            top: 40,
            child: IconButton(onPressed: (){
          Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          Positioned(
           top: 450,
           left: 110,
            child: Text("Let's make Your",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.indigo),)),

             Positioned(
           top: 480,
           left: 150,
            child: Text("first Scan!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.indigo),)),
        

           Positioned(
           top: 580,
           left: 120,
            child: Text("Please give us access to",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.indigo),)),
        
         Positioned(
           top: 600,
           left: 140,
            child: Text("your phone camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.indigo),)),

            
                Positioned(
                  top: 700,
                  left: 20,
                  child: Text('Allow Camera Access',style: TextStyle(color: Colors.indigo,fontSize: 16,fontWeight: FontWeight.bold),)),
              
           Positioned(
            top: 690,
            left: 320,
            child: Row(
              children: [
                CupertinoSwitch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      // Perform actions based on the switch state
                      if (isSwitched) {
                        // Switch is turned on
                      } else {
                        // Switch is turned off
                      }
                    });
                  },
                  activeColor: Colors.indigo,
                  trackColor: Colors.grey,
                ),
              ]
            )
           ),
              
        Positioned(
          top: 800,
          left: 50,
          child: SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: ((context) => ScanScreen())));
            }, child: Text('Start Scanning'),
            style: ElevatedButton.styleFrom(
                     primary: Colors.indigo,  // Background color
                     onPrimary: Colors.white,  // Text color
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20),  // Rounded corners
                     ),
                   ),
            ),
          ),
        )
        
        ]
          )
        
      );
    
  }
}