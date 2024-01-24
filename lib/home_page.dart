import 'package:flutter/material.dart';
import 'package:test_task_registration/components/style.dart';
import 'package:test_task_registration/page_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _phone;
  bool isActive = false;
  void _active() {
    if (_phone != null) {}
    if (_phone!.isEmpty) {
      isActive = false;
    } else {
      isActive = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFB700),
                    ),
                    child: const Center(
                      child: Text(
                        '1',
                        style: AppTextStyle.styleApp2,
                      ),
                    ),
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFB700),
                    ),
                    child: const Center(
                      child: Text(
                        '2',
                        style: AppTextStyle.styleApp2,
                      ),
                    ),
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFB700),
                    ),
                    child: const Center(
                      child: Text(
                        '3',
                        style: AppTextStyle.styleApp2,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text('Регистрация', style: AppTextStyle.styleApp1),
              SizedBox(height: 5),
              const Text(
                'Введите номер телефона для регистрации',
                style: AppTextStyle.styleApp2,
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  TextFormField(
                    onChanged: (String? phone) {
                      _phone = phone;
                      _active();
                    },
                    decoration: InputDecoration(
                        labelText: "Номер телефона",
                        hintText: '+7....',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 100),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          return
                              // Изменение цвета кнопки в зависимости от условия
                              _phone.toString() == '+79257571404'
                                  ? Colors.yellow
                                  : Colors.white30;
                        }),
                      ),
                      onPressed: isActive
                          ? () {
                              if (_phone.toString() == '+79257571404') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Page2(),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.white,
                                    content: Center(
                                      child: Text(
                                        'Ошибка номера !',
                                        style: TextStyle(
                                          backgroundColor: Colors.redAccent,
                                          color: Colors.black,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            }
                          : null,
                      child: Text(
                        'Отправить смс-код',
                        style: TextStyle(
                          color: Color(0xFF4E4E4E),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '      Нажимая на данную кнопку, вы даете \n'),
                    TextSpan(text: 'согласие на обработку '),
                    TextSpan(
                        text: 'персональных данных',
                        style: TextStyle(color: Colors.yellow))
                  ]))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
