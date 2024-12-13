import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  int count = 100;
  decrement(){
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Three"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                decrement();
              }, child: const Text("Decrement")),
              Text("$count",style:const TextStyle(fontSize: 40),),
            ],
          ),
        ),
      ),
    );
  }
}
