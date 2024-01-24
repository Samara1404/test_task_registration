import 'package:flutter/material.dart';
import 'package:test_task_registration/components/style.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<TextEditingController> controllers =
      List.generate(6, (index) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                  ),
                  child: const Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Color(0xFF4E4E4E),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
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
                      style: TextStyle(
                        color: Color(0xFF4E4E4E),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                  ),
                  child: const Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Color(0xFF4E4E4E),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            const Text(
              'Подтверждение', style: AppTextStyle.styleApp1),
                         
            SizedBox(height: 16),
            const Text( textAlign: TextAlign.center,
              'Введите код, который мы отправили \n в SMS на +7(966) 666 66 66', style: AppTextStyle.styleApp2),
                          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => buildDigitField(index),
              ),
            ),
            SizedBox(height: 16),
            const Text('60 сек до повтора отправки кода', style: AppTextStyle.styleApp2 ),
          ],
        ),
      ),
    );
  }
Widget buildDigitField(int index) {
    return Container(
      width: 40.0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextFormField(
        controller: controllers[index],
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,  
        style: const TextStyle(fontSize: 20.0),
        decoration: const InputDecoration(
          counterText: '', // Убираем счетчик символов
          contentPadding: EdgeInsets.zero,
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black), // Бордер с нижней линией
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.blue), // Бордер с нижней линией при фокусе
          ),
        ),
      ),
    );
  }
}