import 'package:flutter/material.dart';
import 'overview.dart';

class SignDetail extends StatefulWidget {
  final Sign sign;

  const SignDetail({
    Key? key,
    required this.sign,
  }) : super(key: key);

  @override
  _SignDetailState createState() {
    return _SignDetailState();
  }
}


class _SignDetailState extends State<SignDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.sign.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.sign.imageUrl),
              ),
            ),
            const SizedBox(
              height:8,
            ),
            Text(
              widget.sign.label,
              style: const TextStyle(fontSize: 30),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.sign.infos.length,
                itemBuilder: (BuildContext context, int index) {
                  final info = widget.sign.infos[index]; //ingredient --> info
                  return Text(
                      ' ${info.name}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}