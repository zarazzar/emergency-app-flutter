import 'package:emergency_app/detail_ambulan.dart';
import 'package:flutter/material.dart';
import 'package:emergency_app/model/data_ambulan.dart';

class AmbulanActivity extends StatelessWidget {
  const AmbulanActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Emergency Ambulance'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final DataAmbulan ambulan = dataAmbulanList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailAmbulan(
                    ambulan: ambulan,
                  );
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.network(ambulan.imageUrl),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(ambulan.nama,
                                style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 46, 93, 182))),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(ambulan.lokasi)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: dataAmbulanList.length,
        ));
  }
}
