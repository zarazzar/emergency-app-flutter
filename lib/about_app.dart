import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About App'),
      ),
      body: Container(
        margin: const EdgeInsets.all(30),
        alignment: Alignment.topCenter,
        child: const nextDesc(
            text:
                "Aplikasi ini dibuat dengan ide dari masalah di kehidupan sehari-hari. Agar dapat membantu orang-orang untuk menghubungi pihak berwajib apabila terjadi situasi darurat disekitar."),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class nextDesc extends StatefulWidget {
  final String text;
  const nextDesc({Key? key, required this.text}) : super(key: key);
  @override
  _nextDesc createState() => _nextDesc();
}

class _nextDesc extends State<nextDesc> {
  double _textSize = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("perbesar"),
          onPressed: () {
            setState(() {
              _textSize++;
            });
          },
        ),
        ElevatedButton(
          child: const Text("perkecil"),
          onPressed: () {
            setState(() {
              _textSize--;
            });
          },
        )
      ],
    );
  }
}
