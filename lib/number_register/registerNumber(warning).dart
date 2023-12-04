import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registerNumWarning extends StatefulWidget {
  registerNumWarning({super.key});

  @override
  State<registerNumWarning> createState() => _registerNumWarning();
////

//////
}

class _registerNumWarning extends State<registerNumWarning> {
  ////////////
  final TextEditingController _controller = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      _textChanger();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _textChanger() {
    setState(() {
      _isButtonEnabled = _controller.text.isNotEmpty;
    });
  }

  /////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Text(
                    'Регистрация ',
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),
            //end first
            SizedBox(
              height: 68,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Войти',
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
            //end of 3 part
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                CupertinoTextField(
                  controller: _controller,
                  placeholder: '8(777) - - -',
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  prefix: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('    '),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [
                  
                  Icon(Icons.warning_outlined,color: Colors.green,),
                  SizedBox(width: 5, ),
                  Text('Неверный код  подтверждения',style: TextStyle(color: Colors.green,fontSize: 14),)
                  
                ],
              ),
            ),
            //end of 4
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CupertinoButton(
                  child: Text('Далее'),
                  onPressed: _isButtonEnabled ? () {} : null,
                  color: _isButtonEnabled ? Colors.green : Colors.grey,
                  padding: EdgeInsets.symmetric(vertical: 20),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
