import 'package:flutter/material.dart';
import 'package:hymns_appv0/hym_lyrics.dart';

void main() {
  runApp(const HymListView());
}

class Hymn {
  final int index;
  final String title;

  Hymn(this.index, this.title);
}

class HymListView extends StatelessWidget {
  const HymListView({super.key});

  @override
  Widget build(BuildContext context) {
    // Generate random hymn titles
    final hymns = List.generate(
      20, // Adjust number of hymns as needed
      (index) => Hymn(index + 1, 'Praise, my soul the king of heaven...'),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hymn App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF006181),
          title: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      height: 30.0,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.search,
                            ),
                            hintText: 'Search hymns',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            // Scrollable hymn list with padding
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: hymns.length,
                  itemBuilder: (context, index) {
                    final hymn = hymns[index];
                    return ListTile(
                      leading: Container(
                        width: 40.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[900], // Dark red border
                        ),
                        child: Center(
                          child: Text(
                            style: TextStyle(color: Colors.white),
                            hymn.index
                                .toString()
                                .padLeft(4, '0'), // Pad index with zeros
                          ),
                        ),
                      ),
                      title: Text(
                        hymn.title,
                        overflow: TextOverflow.ellipsis, // Truncate long titles
                      ),
                      trailing: Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        // Navigate to hymn detail page (implement later)
                     Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HymLyrics()),
                  );
                      },
                    );
                  },
                ),
              ),
            ),
            // Fixed footer with styled text and background

            Container(
              height: 50.0,
              color: Colors.blueGrey[900], // Dark blue-grey background
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the content
                children: [
                  Image.asset(
                      'images/price-logo.jpg',
                      height: 25,
                      width: 25,
                      ), // Replace with your logo path

                      SizedBox(width: 10,),
                  Text(
                    'Copyright © All Rights Reserved PRICE 2024',
                    style: TextStyle(
                        color: Colors.white, // White text color
                        fontSize: 14.0,
                      // Adjust font size as needed
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
