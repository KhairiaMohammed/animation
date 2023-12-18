import 'package:flutter/material.dart';

class LightIntensitySliderCard extends StatelessWidget {
  const LightIntensitySliderCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child:
        Row(
          children: [
            Icon(Icons.connected_tv_sharp),
            Expanded(
              child: Slider(
                value: .2,
                onChanged: (value) {},
              ),
            ),
            Icon(Icons.connected_tv_sharp),
          ],
        )

    );
  }
}




