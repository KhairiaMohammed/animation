import 'package:flutter/material.dart';

class LightsAndTimerSwitchers extends StatelessWidget {
  const LightsAndTimerSwitchers({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Timer'),
                Spacer(),
              ],
            ),
            const SizedBox(height: 8),
          ],
        );
  }
}
