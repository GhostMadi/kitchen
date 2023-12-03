import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Screen_2 extends StatefulWidget {
  const Screen_2({super.key});

  @override
  State<Screen_2> createState() => _screen_2State();
}

List<String> languages = ['English', 'Russian', 'Kazakh'];

class _screen_2State extends State<Screen_2> {
  String currentOption = languages[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //first container-1
          Padding(
            padding: const EdgeInsets.all(94.0),
            child: Container(
              child: Center(
                child: Text.rich(TextSpan(
                    style: TextStyle(
                        fontSize: 64,
                        fontFamily: 'Anton',
                        decoration: TextDecoration.none),
                    children: [
                      TextSpan(
                          text: 'B', style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: 'O',
                          style: TextStyle(
                              color: Color.fromRGBO(126, 217, 87, 100))),
                      TextSpan(
                          text: 'RD', style: TextStyle(color: Colors.black)),
                    ])),
              ),
            ),
          ), //end of sirst container-1
          //radiolists
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0),
            child: Container(
              child: Column(
                children: [
                  RadioListTile(
                      title: Text('English'),
                      value: languages[0],
                      groupValue: currentOption,
                      onChanged: (value) {
                        setState(() {
                          currentOption = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: Text('Руский язык'),
                      value: languages[1],
                      groupValue: currentOption,
                      onChanged: (value) {
                        setState(() {
                          currentOption = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: Text('Қазақ тілі'),
                      value: languages[2],
                      groupValue: currentOption,
                      onChanged: (value) {
                        setState(() {
                          currentOption = value.toString();
                        });
                      })
                ],
              ),
            ),
          ), //end of radiolists
          SizedBox(
            height: 78,
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: CupertinoButton(
                        color: Color.fromRGBO(9, 170, 56, 100),
                        child: Text('Регестрация'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/screen_3');
                        }),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: CupertinoButton(
                        color: Color.fromRGBO(9, 170, 56, 100),
                        child: Text('Войти как гость'),
                        onPressed: () {}),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      child:RichText(text:TextSpan(style: TextStyle(fontSize: 16),
                        children:[ 
                          TextSpan(text: ('У меня уже есть аккаунт ')),
                          TextSpan(text: (' Войти'),style: TextStyle(color: Colors.green)),
                        ]
                      ))
                    ),
                  )
                ]),
          )
        ],
      )),
    );
  }
}
