import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmsPage extends StatefulWidget {
  const SmsPage({super.key});

  @override
  State<SmsPage> createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.00,vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.grey,
                ))
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'СМС подтверждение',
                    style: TextStyle(fontSize: 24),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            //////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: boxes(),
                ),SizedBox(width: 10,),
                Container(
                  child: boxes(),
                ),SizedBox(width: 10,),
                Container(
                  child: boxes(),
                ),SizedBox(width: 10,),
                Container(
                  child: boxes(),
                ),SizedBox(width: 10,),
              ],
            ),
            //////////////
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Отправить код ещё раз ',
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CupertinoButton(
                    padding: EdgeInsets.symmetric(vertical: 22),
                    child: Text('Войти'),
                    color: Colors.green,
                    onPressed: () {})
              ],
            )
          ],
        ),
      )),
    );
  }
  boxes() {
    return Container(
      height: 40,
      width: 30,
      child: CupertinoTextField(
         decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color.fromARGB(255, 235, 235, 235),
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(5)),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          LengthLimitingTextInputFormatter(1),
        ],
        keyboardType: TextInputType.number,
        placeholder: '',
      ),
    );
  }
}
