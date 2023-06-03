import 'package:flutter/material.dart';
import 'package:emergency_app/ambulan_activity.dart';
import 'package:emergency_app/damkar_activity.dart';
import 'package:emergency_app/about_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Palembang Emergency App'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const AmbulanActivity();
                        }));
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(30)),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 255, 146, 21))),
                      child: Image.asset(
                        'images/siren.png',
                        width: 70,
                        height: 90,
                      ),
                    ),
                    const Text(
                      'AMBULANS',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 146, 21),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DamkarActivity();
                          }));
                        },
                        style: ButtonStyle(
                            shape:
                                MaterialStateProperty.all(const CircleBorder()),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(30)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                        child: Image.asset(
                          'images/alert.png',
                          width: 70,
                          height: 90,
                        )),
                    const Text(
                      'DAMKAR',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutApp();
                }));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: const Text(
                'About App',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
