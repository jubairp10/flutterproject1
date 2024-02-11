// import 'package:flutter/material.dart';
//
// /// Flutter code sample for [Slider].
//
// void main() => runApp(const SliderApp());
//
// class SliderApp extends StatelessWidget {
//   const SliderApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: SliderExample(),
//     );
//   }
// }
//
// class SliderExample extends StatefulWidget {
//   const SliderExample({super.key});
//
//   @override
//   State<SliderExample> createState() => _SliderExampleState();
// }
//
// class _SliderExampleState extends State<SliderExample> {
//   double _currentSliderValue = 20;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Slider')),
//       body: Slider(
//         value: _currentSliderValue,
//         max: 100,
//         divisions: 5,
//         label: _currentSliderValue.round().toString(),
//         onChanged: (double value) {
//           setState(() {
//             _currentSliderValue = value;
//           });
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class SliderTutorial extends StatefulWidget {
  const SliderTutorial({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _SliderTutorialState createState() => _SliderTutorialState();
}

class _SliderTutorialState extends State<SliderTutorial> {
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Slider(
            label: "Select Age",
            value: age.toDouble(),
            onChanged: (value) {
              setState(() {
                age = value.toInt();
              });
            },
            min: 5,
            max: 100,
          ),


        ],
      ),
    );
  }
}

