import 'dart:math';

import 'package:flutter/material.dart';

class Rolldice extends StatefulWidget {
  const Rolldice({super.key});

  @override
  State<Rolldice> createState() => _RolldiceState();
}

class _RolldiceState extends State<Rolldice> {
  @override
  var activeDice = 'assets/1.png';

  void rolling() {
    var random = Random().nextInt(6)+1;
    setState(() {
      activeDice = 'assets/$random.png';
    });
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Column(
        children: [
          Image.asset(
            activeDice,
            width: 150,
          ),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          onPressed: rolling, 
          child:const Padding(
            padding:  EdgeInsets.all(12.0),
            child: Text('Roll Dice'),
          ))
        ],
      ),
    );
  }
}
