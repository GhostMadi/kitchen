import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registerNum extends StatefulWidget {
  const registerNum({super.key});

  @override
  State<registerNum> createState() => _registerNumState();
}

class _registerNumState extends State<registerNum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
         child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.close,size: 30,color: Colors.grey,),
                Text('Регистрация ',style: TextStyle(color: Colors.green),)
              ],
            ),
            //end first
            SizedBox(
              height: 68,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Войти',
                style: TextStyle(
                  fontSize: 24
                ),)
              ],
            ),
            //end of 3 part
            SizedBox(height: 30,),
            Column(
              children: [
                CupertinoTextField(placeholder: '8(777)--- -- --',
                padding: const EdgeInsets.symmetric(vertical: 18),
                prefix: Padding(padding: const EdgeInsets.only(left: 8),
                child: Text('    '),),)
              ],
            ),
            //end of 4
            Column(
              children: [
                CupertinoButton(
                  child: Text('Далее'), 
                  
                  onPressed: (){})
              ],
            )
          ],
         ),
         
         
        )),
    );
  }
}
