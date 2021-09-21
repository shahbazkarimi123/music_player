import 'package:flutter/material.dart';
import 'package:music_player_flutter/colors.dart';
import 'package:music_player_flutter/playerControlers.dart';
import 'albumart.dart';
import 'navbar.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Nunito'),
    title: 'Asif_music',
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 2;
  Map audioData = {
    'image':'https://thegrowingdeveloper.org/thumbs/1000x1000r/audios/quiet-time-photo.jpg',
    'url':'https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'
  };


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          NavigationBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return AlbumArt();
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            "Asif",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w500,
              color: darkPrimaryColor,
            ),
          ),
          Text(
            "Play music asif",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: darkPrimaryColor,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
                trackHeight: 5,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)),
            child: Slider(
              value: sliderValue,
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.3),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),
          PlayerControls(),
          SizedBox(height: 80,)
        ],
      ),
    );
  }
}
