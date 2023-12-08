import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.notifications_none_sharp),
                    onPressed: () {
                     
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.person_outlined),
                    onPressed: () {
                      // Handle person button press
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130,left: 5),
            child: Column(
              children: [
                Text('Hi Scanetic',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.indigo ),),
                 Padding(
                   padding: const EdgeInsets.only(left: 25),
                   child: Text("Let's keep your skin healthy",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
                 ),

                 
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220,left:20 ),
            child: Container(
              height: 80,
              width: 370,
             decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.circular(40), boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                    ]
             ),
             child: Row(
              children: [
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width:2.0,
                      color: Colors.green
                    )
                  ),
                  child: Icon(Icons.check,size: 30,color: Colors.green,),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Text('You are on track'),
                    ),
                    Text('Next scan reminder in 10 days')
                  ],
                )
              ],
             ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 320),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text('info & News '),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text('View All',style: TextStyle(color: Colors.indigo,fontSize: 18,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 380),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30,),topRight: Radius.circular(30)),
                      image: DecorationImage(image: AssetImage('images/rash.png'),fit: BoxFit.cover),
                      
                    ),
                  ),
                ),
                 Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                    ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 120,top: 20),
                        child: Text('Diagnosis of skin cancer - what',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 18),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 260),
                        child: Text('happens next?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 100,top: 10),
                        child: Text('it is a diagnosis that is frightening and often'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Text('leaves those affected and their family...'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
