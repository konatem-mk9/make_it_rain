import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter=0;
  void _rainMain(){
    setState((){
      //Important- setState is called each time we need to update
      _moneyCounter=_moneyCounter+100;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make it rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          children:  [
            Center(
              child: Text(
                "Get Rich !",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 35,
                ),
              ),
            ),
            Expanded(
                child: Center(
              child: Text(
                "$_moneyCounter ",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 47.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            )),
            Expanded(
                child: Center(
              child: TextButton(
                onPressed: _rainMain,
                child: Text(
                  "Let it Rain !",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 50.9,
                      color: Colors.deepOrangeAccent),

                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
