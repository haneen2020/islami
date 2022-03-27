import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/sura_details/item_verse.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const routeName = 'sura-details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    setState(() {
      verses = lines;
      print(verses.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) loadFile(args.index);

    return Stack(children: [
      Image.asset(
        provider.getBackground(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
              args.name,
              style: Theme.of(context).textTheme.headline1,
            )),
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            )),
        body: verses.length == 0
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
          separatorBuilder: (BuildContext, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
                    height: 1,
                    color: Theme.of(BuildContext).colorScheme.secondary,
                  );
          },
          itemBuilder: (_, index) {
            return ItemVerse(verses[index]);
          },
          itemCount: verses.length,
        ),
      )
    ]);
  }
}

class SuraDetailsArgs {
  int index;
  String name;

  SuraDetailsArgs(this.name, this.index);
}
