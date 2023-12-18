import 'package:flutter/material.dart';


class MusicSwitchers extends StatelessWidget {
  const MusicSwitchers({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child:
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Row(
                  children: [
                    Text('Music'),
                    Spacer(),
                    Icon(Icons.open_in_new_rounded),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'fdsfd',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  'gggg',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                IconTheme(
                  data: const IconThemeData(size: 20, color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Flexible(child: Icon(Icons.fast_rewind)),
                      const SizedBox(width: 8),
                      Flexible(
                          child: const Icon(Icons.pause)
                      ),
                      const SizedBox(width: 8),
                      const Flexible(child: Icon(Icons.fast_forward)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),


    );
  }
}
