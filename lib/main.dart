import 'package:flutter/material.dart';

void main()=>runApp(Stful());

class Stful extends StatefulWidget {
   @override
  _StfulState createState() => _StfulState();
}

class _StfulState extends State<Stful> {
  int a=0;
  TextEditingController obj=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull Inc"),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: obj,
              decoration: InputDecoration(
                hintText: "Hello"
              ),
            ),
            SizedBox(height: 10.0,),
            RaisedButton(
              child: Text("+",style: TextStyle(fontSize: 20.0),),
              onPressed: (){
                setState(() {
                  a++;
                });
                obj.text=a.toString();
              },
            ),
            SizedBox(height: 10.0,),
            RaisedButton(
              child: Text("-",style: TextStyle(fontSize: 20.0),),
              onPressed: (){
                setState(() {
                  a--;
                });
                obj.text=a.toString();
              },
            )
          ],
        ),
      ),
    );
  }
}
