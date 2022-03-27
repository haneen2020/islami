import 'package:flutter/material.dart';

class Radioo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 3, child: Image.asset('assets/images/radio_image.png')),
          Text(
            'اذاعة القرءان الكريم',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(
                  AssetImage('assets/images/next.png'),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                SizedBox(
                  width: 60,
                ),
                Icon(
                  Icons.play_arrow,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 60,
                ),
                SizedBox(width: 60),
                ImageIcon(AssetImage('assets/images/back.png'),
                    color: Theme.of(context).colorScheme.secondary),
              ],
            ),
          )
        ],
      ),
    );
  }
}
