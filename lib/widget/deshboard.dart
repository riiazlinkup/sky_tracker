import 'package:flutter/material.dart';
import 'gap_height.dart';

class DeshBoard extends StatelessWidget {
  DeshBoard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  IconData icon;
  String title;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.teal),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.teal),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                gapHeight(height: 5.0),
                Text(title.toString()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
