import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/start/regestrationFail/sms/register/radio_1.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

List<String> option = ['Мужской', 'Женский'];

class _RegisterPage extends State<RegisterPage> {
  String currentOption = option[0];
  int _value = 1;
  bool ch1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Container(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Icon(Icons.close),
                ),
              ]),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Регистрация ',
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    CupertinoTextField(
                      placeholder: '8(705) 787 87 87',
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text('  '),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CupertinoTextField(
                      placeholder: 'Имя',
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text('  '),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CupertinoTextField(
                      placeholder: 'Фамилия',
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text('  '),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CupertinoTextField(
                      placeholder: 'Почта',
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text('  '),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Column(
                      children: [Text('Пол', style: TextStyle(fontSize: 16))],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              
                              radio2(
                                txt: 'Мужчина',
                                value: 1,
                                groupValue: _value,
                                onChanged: (int? value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            
                              radio2(
                                txt: 'Женщине',
                                value: 2,
                                groupValue: _value,
                                onChanged: (int? value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                },
                              ),
                              
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 29,
            ),
            //
            CupertinoTextField(
              placeholder: 'Код друга (не обязательно)',
              padding: const EdgeInsets.symmetric(vertical: 18),
              prefix: Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text('  '),
              ),
            ),
            //
            SizedBox(
              height: 21,
            ),
            Container(
              child: Column(children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Checkbox(
                            value: ch1,
                            onChanged: (val) {
                              setState(() {
                                ch1 = val!;
                              });
                            }),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        RichText(
                            text: TextSpan(
                                style: TextStyle(fontSize: 14),
                                children: [
                              TextSpan(text: 'Я ознакомлен с'),
                              TextSpan(
                                  text: ' Пользовательским \nсоглашением',
                                  style: TextStyle(color: Colors.blue)),
                            ]))
                      ],
                    )
                  ],
                )
              ]),
            ),
            ///////////////////
            //
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 21,
                  ),
                  CupertinoButton(
                      child: Text(
                        'Далее',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                      color: ch1 == true ? Colors.blue : Colors.grey)
                ],
              ),
            ),
            /////////////////
            SizedBox(
              height: 14,
            ),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text:
                            TextSpan(style: TextStyle(fontSize: 16), children: [
                      TextSpan(text: 'У меня уже есть аккаунт '),
                      TextSpan(
                          text: ' Войти',
                          style: TextStyle(color: Colors.green)),
                    ]))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
