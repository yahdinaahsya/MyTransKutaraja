import 'package:flutter/material.dart';
import 'package:my_trans_kutaraja/pages/Home/home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      'Selamat datang di MyTransKutaraja',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                  ),
                  const Text(
                    'Nikmati kemudahan akses informasi keberangkatan bus secara real-time!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Image.asset('images/bus_welcome.png'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(
                    Theme.of(context).primaryColor),
              ),
              child: const Text('Ayo, lacak bus di sini!',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ]),
    );
  }
}
