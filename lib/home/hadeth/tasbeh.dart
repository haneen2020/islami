import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class Tasbeh extends StatefulWidget {
  @override
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  int counter = 0;
  int index = 0;
  double turns = 1;
  List<String> tasbeh = [
    'سبحان الله',
    'الحمدلله',
    'لا اله الا الله',
    'الله أكبر',
    'لا حول ولا قوة الا بالله'
  ];

  void tasbehFunc() {
    counter++;
    if (counter % 33 == 0) {
      index++;
    }
    if (index == tasbeh.length) {
      index = 0;
    }
    turns += 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(provider.getHead()),
              InkWell(
                onTap: () {
                  tasbehFunc();
                },
                child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.11),
                    child: Transform.rotate(
                        angle: turns,
                        child: Image.asset(provider.getSeb7aBody()))),
              ),
            ],
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              '$counter',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              '${tasbeh[index]}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
