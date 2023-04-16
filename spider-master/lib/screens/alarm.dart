import 'dart:async';
import 'package:flutter/material.dart';

import 'background.dart';
class AlarmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatingBg1(),
          // your score screen UI code here
        ],
      ),
    );
  }
}
