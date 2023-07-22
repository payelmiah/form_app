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
      appBar: _buildAppbar(),

      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
              ),

              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Enter your phone number',
                  labelText: 'Phone',
                ),
              ),

              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'Dob',
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(

                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Submit'),
                      ),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


AppBar _buildAppbar(){
  return AppBar(
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
  );

}