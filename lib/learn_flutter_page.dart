import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In Page'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              debugPrint('Settings Button Pressed');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('images/xx.png'),
          const SizedBox(height: 10),
          const Divider(),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'This is a sign in page',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.red,
              ),
              onPressed: () {},
              child: const Text('Elevated Button')),
          OutlinedButton(
              onPressed: () {}, child: const Text('Outlined Button')),
          TextButton(onPressed: () {}, child: const Text('Text Button')),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('GestureDetector Pressed');
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.local_fire_department, color: Colors.blue),
                  Text('Row Widget'),
                  Icon(Icons.local_fire_department, color: Colors.blue),
                ]),
          ),
          Switch(
            value: isSwitch,
            onChanged: (bool newBool) {
              setState(() {
                isSwitch = newBool;
              });
            },
          ),
          Checkbox(
              value: isCheckBox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckBox = newBool;
                });
              }),
          Image.network("https://picsum.photos/250?image=9"),
        ]),
      ),
    );
  }
}
