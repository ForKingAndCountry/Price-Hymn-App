import 'package:flutter/material.dart';

void main() {
  runApp(const HymnApp());
}

class HymnApp extends StatelessWidget {
  const HymnApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            
            backgroundColor: Color(0xFF171f68),
            title: Column(
              children: [
                Row(children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:  Colors.white,
                        ),
                        
                      height: 30.0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
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
                ]),
        
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Color(0xFF171f68),
                child: ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: 
                    ElevatedButton.styleFrom (
                      backgroundColor: Color(0xFF171f68),
                      shadowColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      

                      ),
                  
                    onPressed: () {
                            
                    },
                    child: Text('All Hymns'),
                  ),
                  ElevatedButton(
                    style: 
                    ElevatedButton.styleFrom (
                      backgroundColor: Color(0xFF171f68),
                      shadowColor: Colors.transparent,
                     foregroundColor: Colors.white,

                      ),
                    onPressed: () {
                      
                    },
                    child: Text('Favorites'),
                  ),
                  ElevatedButton(
                    style: 
                    ElevatedButton.styleFrom (
                      backgroundColor: Color(0xFF171f68),
                      shadowColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      ),
                    onPressed: () {
                      
                    },
                    child: Text('Search'),
                  ),
                ],
                            ),
              ),

              Padding(padding: EdgeInsets.all(25.0),
              child: Column(
                children: [
                  
                ],
              ),
              )

            ],
          ),
        ));
  }
}
