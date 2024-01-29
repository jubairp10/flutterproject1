import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: rangeSliderTutorial(title: '',),));
}
class rangeSliderTutorial extends StatefulWidget {
  const rangeSliderTutorial({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _rangeSliderTutorialState createState() => _rangeSliderTutorialState();
}

class _rangeSliderTutorialState extends State<rangeSliderTutorial> {
  double start = 30.0;
  double end = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RangeSlider(
            values: RangeValues(start, end),
            labels: RangeLabels(start.toString(), end.toString()),
            onChanged: (value) {
              setState(() {
                start = value.start;
                end = value.end;
              });
            },
            min: 10.0,
            max: 80.0,
          ),
          Text(
            "Start: " +
                start.toStringAsFixed(2) +
                "\nEnd: " +
                end.toStringAsFixed(2),
            style: const TextStyle(
              fontSize: 32.0,
            ),
          ),
        ],
      ),
    );
  }
}

