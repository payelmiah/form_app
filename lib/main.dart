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

      body: _buildform(),
    );
  }
}


class _buildform extends StatefulWidget {
  const _buildform();

  @override
  State<_buildform> createState() => _buildformState();
}


//body building
class _buildformState extends State<_buildform> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),

            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'Enter your phone number',
                labelText: 'Phone',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),

            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today),
                hintText: 'Enter your date of birth',
                labelText: 'Dob',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(

                  child: ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a Snackbar.
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Data is in processing.')));
                      }
                    },
                    child: const Text('Submit'),
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//AppBaR building
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