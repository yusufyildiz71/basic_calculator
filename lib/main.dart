import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var num1,num2,resultt;
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  Addition(){
    setState(() {
      num1=num.parse(t1.text);
      num2=num.parse(t2.text);
      resultt=num1+num2;
    });
  }
  Subtraction(){
    setState(() {
      num1=num.parse(t1.text);
      num2=num.parse(t2.text);
      resultt=num1-num2;
    });
  }
  Multiplication(){
    setState(() {
      num1=num.parse(t1.text);
      num2=num.parse(t2.text);
      resultt=num1*num2;
    });
  }
  Division(){
    setState(() {
      num1=num.parse(t1.text);
      num2=num.parse(t2.text);
      resultt=num1 / num2;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Center(
          child: Column(
        children: <Widget>[
          Text("$resultt"),
          TextField(
            controller: t1,
            decoration: InputDecoration(
    border: OutlineInputBorder(),
    
  ),
          ),
          TextField(
            controller: t2,
            decoration: InputDecoration(
    border: OutlineInputBorder(),
    
  ),
          ),
          RaisedButton(onPressed: Addition, child: Text("+"),),
          RaisedButton(onPressed: Subtraction,child: Text("-"),),
          RaisedButton(onPressed: Multiplication, child: Text("*"),),
          RaisedButton(onPressed: Division, child: Text("/"),),

        ],
      ),
      ),
    );
  }
}
