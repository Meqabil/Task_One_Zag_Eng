import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  int distance = 25;
  int speed = 40;

  String calculate(){
    int meters =  (distance * 1000) ;
    double speedByMBerS = speed * (5 / 18);
    int seconds = (meters / speedByMBerS).toInt();
    int minutes = 0,hours = 0;
    while(seconds > 59){
      minutes += 1;
      seconds -= 60;
    }
    while(minutes > 59){
      minutes -= 60;
      hours += 1;
    }
    print("You will travel int $hours , $minutes , $seconds");
    return "You will travel int $hours , $minutes , $seconds";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Two"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Suppose your distance to the office from home is 25 km and you
              // travel 40 km per hour. Write a program to calculate the time taken to
              // reach the office in hours, minutes, and seconds.
              // Formula= (distance) / (speed)
              Text("You will travel in : ${calculate()}")
            ],
          ),
        ),
      ),
    );
  }
}
