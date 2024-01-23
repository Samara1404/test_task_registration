import 'package:flutter/material.dart';
import 'package:test_task_registration/components/style.dart';
import 'package:test_task_registration/page_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 String? _email;
  String? _phone;
  bool isActive = false;
  void _active() {
    if (_phone != null && _email != null) {}
    if (_phone!.length < 1 || _email!.length < 1) {
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 
                  Icon(
                    
                    Icons.circle,
                    size: 30,
                    color: Color(0xFFFFB700),
                  ),
                  Text(
                    '  1',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    Icons.circle,
                    size: 30,
                    color: Color(0xFFFFB700),
                  ),
                  Text(
                    '  2',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    Icons.circle,
                    size: 30,
                    color: Color(0xFFFFB700),
                  ),
                  Text(
                    '  3',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
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
                    decoration: InputDecoration(
                        labelText: "Номер телефона",
                        hintText: '+7....',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 100),
                   TextButton(              
              style: ElevatedButton.styleFrom(backgroundColor:  Color(0xFFA7A7A7), padding:  EdgeInsets.symmetric(vertical: 20, horizontal:150 )),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const  Page_2 ()));
              },
              child: const Text('Отправить смс-код', style: AppTextStyle.styleApp3),              
              ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
