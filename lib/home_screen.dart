import 'package:flutter/material.dart';
import 'package:simple_login/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isValue = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [const Text("HomeScreen"),
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        isValue = true ;
                      });
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)  {
                        return  SecondScreen() ;
                      }));
                    },
                    child: const Text("Click Me"))],))));
  }
}
