import 'package:flutter/material.dart';

class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key});

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  RangeValues _rangeValues = const RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Range Slider Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Start: ${_rangeValues.start.round().toString()}',style: TextStyle(fontSize: 25,color: Colors.white),
                ),
                SizedBox(width: 20),
                Text(
                  'End: ${_rangeValues.end.round().toString()}',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ],
            ),
            RangeSlider(
              values: _rangeValues,
              max: 100,
              divisions: 100,
              labels: RangeLabels(
                _rangeValues.start.round().toString(),
                _rangeValues.end.round().toString(),
              ),
              onChanged: (values) {
                setState(() {
                  _rangeValues = values;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
