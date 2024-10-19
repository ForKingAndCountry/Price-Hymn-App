import 'package:flutter/material.dart';
import 'package:hymns_appv0/hymn_list.dart';
import 'hym_list_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
              child: Row(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/price-logo.jpg',
                          height: 100,
                          width: 100,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Peace House Research &'),
                      Text('Innovation Center of Excellence'),
                      Text('(PRICE)')
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 175,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HymListView()),
                  );
                },
                child: Image.asset(
                  'images/piano.png',
                  width: 350,
                  height: 350,
                ),
              ),
            ),
            SizedBox(
              height: 175,
            ),
            Container(
              color: Color(0xFF006181),
              height: 100,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Copyright all rights reserved PRICE 2024',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



// SizedBox(
//           height: 200,
//         ),
//         Center(
//           child: Image.asset(
//             'images/price-logo.jpg',
//             height: 300,
//           ),
//         ),
//         Spacer(),
//         Padding(
//           padding: EdgeInsets.only(
//             bottom: 100,
//           ),
//           child: Container(
//             color: Color(0xff006181),
//             width: double.infinity,
//             height: 60,
//             child: Center(
//               child: Text(
//                 'Copyright all reserved PRICE 2024',
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ),
//           ),
//         ),