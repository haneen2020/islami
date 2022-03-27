import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth.dart';
import 'package:islami_app/home/hadeth/item_verse_hadeth.dart';
import 'package:provider/provider.dart';

import 'package:islami_app/providers/theme_provider.dart';

class HadethDetails extends StatelessWidget {
  static const routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as MyHadeth;
    return Stack(children: [
      Image.asset(
        provider.getBackground(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
          title: Center(
              child: Text(
            args.title,
            style: Theme.of(context).textTheme.headline1,
          )),
        ),
        body: args.content.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
          separatorBuilder: (_, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
                    height: 1,
                    color: Theme.of(context).colorScheme.secondary,
                  );
          },
          itemBuilder: (_, index) {
            return ItemVerse(args.content[index]);
          },
          itemCount: args.content.length,
        ),
      )
    ]);
  }
}
