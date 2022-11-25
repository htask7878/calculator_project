import 'package:flutter/material.dart';

class calc extends StatefulWidget {
  const calc({Key? key}) : super(key: key);

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  StringBuffer stor =new StringBuffer();
  int i = 0, sign = 0;
  var a = 0, b = 0,sum=0;
  List<String> l = [];
  List<String> zero_list = [];
  List<String> dot_list = [];
  List<String> del_list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "calculator",
          style: TextStyle(fontSize: 23, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black38,
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border(
                    top: BorderSide(width: 10.0, color: Colors.black38),
                    left: BorderSide(width: 10.0, color: Colors.black38),
                    right: BorderSide(width: 10.0, color: Colors.black38),
                    bottom: BorderSide(width: 10.0, color: Colors.black38),
                  ),
                ),
                child: Text(
                  "${stor}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  button1("C", Colors.black38,),
                  button1("%", Colors.black38),
                  button1("<", Colors.black38),
                  button1("/", Colors.black38),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  button(1, Colors.white70),
                  button(2, Colors.white70),
                  button(3, Colors.white70),
                  button1("x", Colors.black38),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  button(4, Colors.white70),
                  button(5, Colors.white70),
                  button(6, Colors.white70),
                  button1("-", Colors.black38),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  button(7, Colors.white70),
                  button(8, Colors.white70),
                  button(9, Colors.white70),
                  button1("+", Colors.black38),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  button(0, Colors.white70),
                  button1("00", Colors.white70),
                  button1(".", Colors.white70),
                  button1("=", Colors.black38),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  button(int i, Color c) {
    return Expanded(
      child: InkWell(
        onTap: () {
          stor.write("${i}");
          setState(() {},);
        },
        child: Container(
          margin: EdgeInsets.all(5),
          width: double.infinity,
          decoration: BoxDecoration(
            color: c,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            "$i",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }

  button1(String s, Color c) {
    return Expanded(
        child: InkWell(
          onTap: () {
            // stor.write("${s}");
            if(s == "+" || s == "-" || s == "x" || s == "/" ||s=="%") {
              a = int.parse(stor.toString());
              stor.clear();
              if (s == "+") sign = 1;
              if (s == "-") sign = 2;
              if (s == "x") sign = 3;
              if (s == "/") sign = 4;
              if (s == "%") sign = 5;
            }
            if(s=="=")
            {
              b = int.parse(stor.toString());
              stor.clear();
              mul();
            }
            if(s=="C")
            {
              stor.clear();
              stor.write("");
              print("C is workin");
            }
            if(s==".")
            {
              String p=".";
              stor.write("${p}");
              dot_list.add(p);
              print(" . is workin");
            }
            if(s=="00")
            {
              String o="00";
              stor.write("${o}");
              zero_list.add(o);
              print("00 is workin");
            }
            if(s=="<")
              {
                setState(() {
                  // String sq = s;
                  s=s.substring(0,s.length-1);
                });
              }
            setState(() {},);
          },
          child: Container(
            margin: EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(
              color:c ,
              // s == ""
                  // ? c
                  // : (s == "00" || s == "." ? Colors.white70 : Colors.black38),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "$s",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            alignment: Alignment.center,
          ),
        ));
  }

   mul() {
    print("HT");

    switch (sign) {
      case 1:
        sum = a + b;
        stor.write("${sum}");
        print("+ is work = ${sum}");
        break;
      case 2:
        sum = a - b;
        stor.write("${sum}");
        print("- is work = ${sum}");
        break;
      case 3:
        sum = a * b;
        stor.write("${sum}");
        print("x is work = ${sum}");
        break;
      case 4:
        sum = a ~/ b;
        stor.write("${sum}");
        print("/ is work = ${sum}");
        break;
      case 5:
        sum = (a * b) ~/ 100;
        stor.write("${sum}");
        print("% is work = ${sum}");
        break;
    }
  }
}
