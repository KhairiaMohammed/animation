import 'package:flutter/material.dart';

class AirConditionerControlsCard extends StatelessWidget {
  const AirConditionerControlsCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child:
        Column(
          children: [
            const _AirIcons(),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 120,
                      height: 50,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(
                          width: 10,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white38,
                              size: 20,
                            ),
                            Text(
                              'Air humidity',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white60,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text('20%'),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
    );
  }
}

class _AirIcons extends StatelessWidget {
  const _AirIcons();

  @override
  Widget build(BuildContext context) {
    return const IconTheme(
      data: IconThemeData(size: 30, color: Colors.white38),
      child: Row(
        children: [
          Icon(Icons.connected_tv_sharp),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.connected_tv_sharp),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.connected_tv_sharp),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.connected_tv_sharp),
        ],
      ),
    );
  }
}

