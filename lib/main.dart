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
        leading: Icon(Icons.menu),
        title: Center(child: Text('Form')),
        actions: [
         Container(
           width: 20,
           height: 20,
           child: ClipOval(
            child: Image.asset('assets/avatar.jpg'),
           ),
         ),
        ],
      ),
    );
  }
}
