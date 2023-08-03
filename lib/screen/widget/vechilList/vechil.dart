
import 'package:flutter/material.dart';

class Vechil extends StatelessWidget {
  // int? index;
  // Vechil({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.car_crash),
      title: Text("sudan"),
      subtitle: Text("Maruti Swift Dexire or Simillar"),
      trailing: Column(
        children: [
          Text("\u{20B9}${3729}"),
          Icon(Icons.info_outline)
        ],
      ),
      tileColor:  Colors.red,
      hoverColor: Colors.yellow,
      style: ListTileStyle.list,
    );
  }
}
