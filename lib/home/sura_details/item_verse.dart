import 'package:flutter/material.dart';

class ItemVerse extends StatelessWidget {
  ItemVerse(this.text);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
        textAlign: TextAlign.center,
      ),
    );
  }
}
