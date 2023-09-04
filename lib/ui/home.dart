
import 'package:bizcard/json/json_parsing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom extends StatefulWidget {
  const custom({Key? key}) : super(key: key);

  @override
  State<custom> createState() => _customState();
}

class _customState extends State<custom> {
  int index=0;
  List names=['saif','ali','khan','kinza','batool','mashwani'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull Widget"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(names[index % names.length],style: TextStyle(fontSize: 34),),
            ElevatedButton(onPressed: (){
              setState(() {
                index++;

              });
            }, child: Text("Inspire me",)),
            jsonparsing()

          ],
        ),
      ),
    );
  }
}
