import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen_1 extends StatefulWidget {
  const Screen_1({super.key});

  @override
  State<Screen_1> createState() => _Screen_State();
}

class _Screen_State extends State<Screen_1> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 64,fontFamily: 'Anton', fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: 'B',style:TextStyle(color: Colors.black)),
                    TextSpan(text: 'O',style:TextStyle(color: Color.fromRGBO(126, 217, 87, 100))),
                    TextSpan(text: 'RD',style:TextStyle(color: Colors.black)),
                    
            
                  ]
                )),
            )
        ],
      )),
    );
  }
}
