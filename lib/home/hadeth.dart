import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadeth/item_hadeth_name.dart';

class Hadeth extends StatelessWidget {
  List<MyHadeth> myAhadeth = [];

  void readHadeth() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadeth = content.trim().split('#\r\n');

    for (int i = 0; i < ahadeth.length; i++) {
      String allAhadeth = ahadeth[i];
      allAhadeth.trim();
      if (allAhadeth.isEmpty) continue;
      // print(allAhadeth);
      // print('---------------');
      List<String> lines = allAhadeth.trim().split('\n');
      if (lines[0].isEmpty) {
        lines.removeAt(0);
      }
      String title = lines[0];
      print(lines[0]);

      lines.removeAt(0);
      MyHadeth hadeth = MyHadeth(lines, title);
      myAhadeth.add(hadeth);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (myAhadeth.isEmpty) readHadeth();

    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth-image.png'),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  height: 1,
                  color: Theme.of(BuildContext).primaryColor,
                );
              },
              itemBuilder: (_, index) {
                return ItemHadethName(myAhadeth[index]);
              },
              itemCount: myAhadeth.length,
            ),
          ),
        ],
      ),
    );
  }
}

class MyHadeth {
  List<String> content;

  String title;

  MyHadeth(this.content, this.title);
}