import 'package:emergency_app/model/data_damkar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailDamkar extends StatelessWidget {
  final DataDamkar damkar;
  const DetailDamkar({Key? key, required this.damkar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.network(damkar.imageUrl),
        Container(
          margin: const EdgeInsets.only(top: 16, left: 20),
          child: Text(
            damkar.nama,
            textAlign: TextAlign.left,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
        ),
        Container(margin: const EdgeInsets.all(16), child: Text(damkar.lokasi)),
        Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 5),
            child: Row(
              children: <Widget>[
                const Icon(
                  Icons.phone,
                  color: Colors.orange,
                  size: 40,
                ),
                Text('Telp : ${damkar.noHp}')
              ],
            )),
        Container(
          margin: const EdgeInsets.only(left: 50, right: 50, top: 40),
          child: ElevatedButton.icon(
              icon: const Icon(
                Icons.call,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () async {
                final Uri url = Uri(scheme: 'tel', path: damkar.noHp);
                if (await canLaunchUrl(url)) {
                  await launchUrl(
                      url); //flutter pub add url_launcher & tambah intent action di androidManifest
                }
              },
              label: const Text(
                'CALL',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
                padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 168, 0, 0)),
              )),
        ),
      ],
    ));
  }
}
