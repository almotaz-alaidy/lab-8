import 'package:flutter/material.dart';
import 'package:lab8/components/mytextwedget.dart';
import 'package:lab8/components/mywedget.dart';
import 'package:lab8/screens/TV%20SCREEN.dart';
import 'package:lab8/screens/microwave.dart';
import 'package:lab8/screens/refrigerators.dart';
import 'package:lab8/screens/washing%20machines.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final VideoURL = "https://www.youtube.com/watch?v=a_9NgNI5qlQ";
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final VideoID = YoutubePlayer.convertUrlToId(VideoURL);
    _controller = YoutubePlayerController(initialVideoId: VideoID!);
    flags:
    YoutubePlayerFlags(autoPlay: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 156, 161),
        title: Text(
          "SAMSUNG SHOPE",
          style: TextStyle(
              fontFamily: "DancingScript-VariableFont_wght",
              fontSize: 40,
              color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50, bottom: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 166, 230, 248),
          Color.fromARGB(255, 0, 156, 161)
        ])),
        child: ListView(
          children: [
            YoutubePlayerBuilder(
              player: YoutubePlayer(controller: _controller),
              builder: (context, player) {
                return Column();
              },
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () {
                print("im ready");
              },
              bottomActions: [
                CurrentPosition(),
                ProgressBar(
                  isExpanded: true,
                  colors: ProgressBarColors(
                      backgroundColor: Colors.grey,
                      bufferedColor: Colors.greenAccent,
                      handleColor: Colors.black,
                      playedColor: Colors.blueGrey),
                ),
              ],
            ),
            Divider(
              color: Colors.blueGrey,
              thickness: 1,
              height: 30,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "refrigerators",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 10,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return REFRIGERATORS();
                  },
                ));
              },
              images:
                  "https://www.idgcdn.com.au/article/images/740x500/dimg/1_164.jpg",
            ),
            Divider(
              height: 50,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "TV SCREEN",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 10,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return TvScreen();
                  },
                ));
              },
              images:
                  "https://cairosales.com/74259-large_default/samsung-tv-65-qled-4k-smart-qa65q60b.jpg",
            ),
            Divider(
              height: 50,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "microwave",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 20,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return microwave();
                  },
                ));
              },
              images: "https://i.ytimg.com/vi/bywOaHtNv3U/maxresdefault.jpg",
            ),
            Divider(
              height: 50,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "washing machines",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 10,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Washing();
                  },
                ));
              },
              images: "https://i.ytimg.com/vi/UOz1lPfAmGQ/maxresdefault.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
