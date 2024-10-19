import 'package:flutter/material.dart';
import 'hym_list_view.dart';

class HymLyrics extends StatefulWidget {
  const HymLyrics({super.key});

  @override
  State<HymLyrics> createState() => _HymLyricsState();
}

class _HymLyricsState extends State<HymLyrics> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HymListView()),
                  );
                      }, child: Icon(Icons.arrow_back_sharp)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/price-logo.jpg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Icon(Icons.music_note_outlined),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Row(
                children: [
                  Container(
                    color: Color.fromARGB(255, 26, 24, 24),
                    height: 25,
                    width: 50,
                    child: Text(
                      '0001',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'To Be Closed To Thee',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 4,
                  color: Color(0xFF006181),
                )),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset('images/To-be-close-to-thee.PNG'),
                ))
          ],
        ),
      ),
    );
  }
}
