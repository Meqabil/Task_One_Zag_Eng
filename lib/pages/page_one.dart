import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String element = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page One"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                element = "Hello I'm \"ZagEng\"";
              });
              print(element);
            }, child: const Text("Print")),
            Text("Statement : $element")
          ],
        ),
      ),
    );
  }
}
