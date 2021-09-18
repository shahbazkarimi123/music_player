import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'MUSIC',
    debugShowCheckedModeBanner: false,
    home: MusicApp(),
  ));
}

class MusicApp extends StatefulWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  bool playing = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Karimusic',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[400],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade300,
                Colors.blue.shade800,
                Colors.blue.shade200,
                Colors.yellow.shade800,
              ]),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 48.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Music Beats",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Listen to your favorite music",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 24.0,
                // ),
                Center(
                  child: Container(
                    width: 280.0,
                    height: 250.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                            image: AssetImage('assets/music_image.png'))),
                  ),
                ),
                Center(
                  child: Text(
                    'StartGazer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 45.0,
                            color: Colors.blue,
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_previous,
                            ),
                          ),
                          IconButton(
                            iconSize: 62.0,
                            color: Colors.blue[800],
                            onPressed: () {},
                            icon: Icon(Icons.play_arrow),
                          ),
                          IconButton(
                            iconSize: 45.0,
                            color: Colors.blue,
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_next,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
