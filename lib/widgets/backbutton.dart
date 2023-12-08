import 'package:flutter/material.dart';

class BckBtn extends StatelessWidget {
  const BckBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.only(top: 16, left: 16),
      decoration: BoxDecoration(
        color: Color(0xFF23272E),
        borderRadius: BorderRadius.circular(11),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
