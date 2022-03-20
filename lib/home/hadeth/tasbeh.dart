import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/head_of_seb7a.png'),
              InkWell(
                onTap: () {
                  tasbehFunc();
                },
                child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.11),
                    child: Transform.rotate(
                        angle: turns,
                        child: Image.asset('assets/images/body_of_seb7a.png'))),
              ),
            ],
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color(0x92b7935f),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Color(0xffb7935f),
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
