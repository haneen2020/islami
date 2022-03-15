import 'package:flutter/material.dart';

import '../sura_details/sura_details.dart';

class ItemSuraName extends StatelessWidget {
  ItemSuraName(this.name, this.index);

  String name;
  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailsArgs(name, index));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(
          name,
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
