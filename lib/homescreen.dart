import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen>createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  String name="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Counter App"),
        backgroundColor:  Colors.purple,
       actions: [
         IconButton(onPressed:(){
           setState(() {
             //+
           });
         }, icon :Icon(Icons.add_a_photo_outlined)),
       ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
if(name.length<5){
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
        backgroundColor:Colors.pink,
        content: Text("Name must be atleast 5 letters"),
        duration: Duration(seconds: 2),
    ),
  );
}


        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child:ElevatedButton(
          onPressed: (){
         Navigator.pushNamed(context,"second_screen");
          },
          child: Text("next page"),
        )
      )
    );
  }
}
