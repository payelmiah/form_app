import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homeform(),
  ));
}
class Homeform extends StatefulWidget {
  const Homeform({super.key});

  @override
  State<Homeform> createState() => _HomeformState();
}

class _HomeformState extends State<Homeform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal[500],
        leading: Icon(Icons.menu),
        title: Center(child: Text('Form')),
        actions: [

         Container(
           margin: EdgeInsets.all(15),
           width: 25,
           height: 20,
           child: ClipOval(
            child: Image.asset('assets/avatar.jpg',
              fit: BoxFit.cover,
            ),

           ),
         ),
        ],
      ),
    );
  }
}
