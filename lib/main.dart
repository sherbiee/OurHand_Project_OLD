import 'package:flutter/material.dart';
import 'overview.dart';
import 'detail_obj.dart';

void main() {
  runApp(const SignApp());
}

class SignApp extends StatelessWidget {
  const SignApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'OurHand',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.red,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Sign Language Information'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Sign.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignDetail(sign: Sign.samples[index]); //RecipeDetail-->SignDetail
                    },
                  ),
                );
              },
              child: buildSignCard(Sign.samples[index]),
            );

            return buildSignCard(Sign.samples[index]);

          },
        ),

      ),
    );
  }

  Widget buildSignCard(Sign sign) { //buildRecipeCard--> buildSignCard   recipe-->sign
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 14.0,
            ),
            Text(
              sign.label,
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'arial',
              ),
            )
          ],
        ),
      ),
    );
  }
}

