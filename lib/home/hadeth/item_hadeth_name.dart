import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth.dart';
import 'package:islami_app/home/hadeth/hadeth_details.dart';

class ItemHadethName extends StatelessWidget {
  ItemHadethName(this.title);

  MyHadeth title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.routeName, arguments: title);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(
          title.title,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
