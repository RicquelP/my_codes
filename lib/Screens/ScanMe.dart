import 'package:flutter/material.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 350),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.cancel_outlined,size: 30,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 620),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('Scan in Progress',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                      SizedBox(height: 16), // Add some spacing
                     Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: CircularProgressIndicator(
                        color: Colors.green,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 340),
                       child: Icon(Icons.camera_enhance_outlined,size: 30,),
                     )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}