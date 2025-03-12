import 'package:flutter/material.dart';

class NormalSlider extends StatefulWidget {
  const NormalSlider({super.key});

  @override
  State<NormalSlider> createState() => _NormalSliderState();
}

class _NormalSliderState extends State<NormalSlider> {
  double num = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Normal Slider Example'),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(num.toString(),style: TextStyle(fontSize: 25,color: Colors.white),),
            SizedBox(height: 20,),
            
            Slider(
              label: num.toString(),
              divisions: 10,
              max: 100.0,
              min: 0.0,
              value: num,
              onChanged: (value) {
                setState(() {
                  num = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
