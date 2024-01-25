import 'package:flutter/material.dart';

class StudyPage extends StatelessWidget {
  const StudyPage({super.key});

  @override
  Widget build(BuildContext context) {
    double _witdh = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height / 4;
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: Text('학습하기'),
        actions: [
          IconButton(
            onPressed: () {}, //복수선택 팝업창 띄우기
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            }, //복수선택 팝업창 띄우기
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: _witdh,
              height: _height,
              color: Colors.green,
              padding: EdgeInsets.all(8.0),
              child: Text('문제'),
            ),
            SizedBox(height: 50,),
            Container(
              width: _witdh,
              height: _height,
              color: Colors.green,
              padding: EdgeInsets.all(8.0),
              child: Text('?'),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('이전문제'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('다음문제'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}