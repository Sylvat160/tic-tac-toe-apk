import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Tic Tac Toe',
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  const HomePage({Key?key}):super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage>{

  String displayExOh ='';
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: GridView.builder(
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemBuilder: (BuildContext context, int index){
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color:Colors.grey)
            ),
            child: Center(
              child: Text(
                displayExOh, 
                style : const TextStyle(
                  color: Colors.white , 
                  fontSize: 40
                ),
                ),
            ),
          );
        },
        ),
    );
  }
}