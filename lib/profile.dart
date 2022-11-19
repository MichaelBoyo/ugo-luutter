import 'package:flutter/material.dart';

const int itemCount = 20;

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const Icon(Icons.person),
          title: Text('Ugo ${(index + 1)}'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            debugPrint('List Tile Tapped');
          },
        );
      },
    );
  }
}
