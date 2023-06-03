import 'package:emergency_app/detail_damkar.dart';
import 'package:emergency_app/model/data_damkar.dart';
import 'package:flutter/material.dart';

class DamkarActivity extends StatelessWidget {
  const DamkarActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pemadam Kebakaran'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final DataDamkar damkar = dataDamkarList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailDamkar(
                    damkar: damkar,
                  );
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.network(damkar.imageUrl),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(damkar.nama,
                                style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(damkar.lokasi)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: dataDamkarList.length,
        ));
  }
}
