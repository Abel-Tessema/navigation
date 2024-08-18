import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  void initState() {
    super.initState();
    print('initState called.');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate called.');
  }

  @override
  Widget build(BuildContext context) {
    print('build called.');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen 2'),
      ),
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          child: const Text('Go Back To Screen 1'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// class Screen2 extends StatelessWidget {
//   const Screen2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Screen 2'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           style: const ButtonStyle(
//               backgroundColor: MaterialStatePropertyAll(Colors.blue)),
//           child: const Text('Go Back To Screen 1'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }
