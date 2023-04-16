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


// import 'package:flutter/material.dart';
// import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
// import 'package:intl/intl.dart';
// import 'dart:async';
// import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
// class AlarmScreen extends StatefulWidget {
//   @override
//   _AlarmScreenState createState() => _AlarmScreenState();
// }

// class _AlarmScreenState extends State<AlarmScreen> {
//   String _currentTime = '';
//   bool _isPlaying = false;
//   late Timer _timer;

//   @override
//   void initState() {
//     super.initState();
//     _timer =
//         Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
//   }

//   void _getCurrentTime() {
//     setState(() {
//       _currentTime = DateFormat('h:mm:ss a').format(DateTime.now());
//     });
//   }

//   void _startTimer() {
//     _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
//       setState(() {
//         _currentTime = DateFormat('h:mm:ss a').format(DateTime.now());
//       });
//     });
//   }

//   void _playAlarm() {
//     if (!_isPlaying) {
//       FlutterRingtonePlayer.play(
//         android: AndroidSounds.notification,
//         ios: IosSounds.glass,
//         looping: false,
//         volume: 1.0,
//         asAlarm: true,
//       );
//       setState(() {
//         _isPlaying = true;
//       });
//     }
//   }

//   @override
//   void dispose() {
//     FlutterRingtonePlayer.stop();
//     _timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black87,
//       appBar: AppBar(
//           title: Text(
//             'Alarm',
//             style: TextStyle(fontFamily: "Poppins", fontSize: 28),
//           ),
//           backgroundColor: Color.fromARGB(255, 3, 7, 71)),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               _currentTime,
//               style: TextStyle(fontSize: 50.0, color: Colors.white),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 primary: Color.fromARGB(255, 3, 7, 71),
//               ),
//               child: Text(
//                 'Set Alarm',
//                 style: TextStyle(fontSize: 20),
//               ),
//               onPressed: _playAlarm,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
