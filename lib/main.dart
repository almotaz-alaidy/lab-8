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
                  "https://th.bing.com/th/id/OIP.83_kMmeEpuVw9nMJRNVlsQHaJ4?w=133&h=180&c=7&r=0&o=5&pid=1.7",
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
                  "https://th.bing.com/th/id/OIP.uigKnWzT81GF3J3uJlMKwAHaE8?w=292&h=195&c=7&r=0&o=5&pid=1.7",
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
              images:
                  "https://th.bing.com/th/id/OIP.8niFRpZ-6DlA3MjSgNCx4QHaEK?w=286&h=180&c=7&r=0&o=5&pid=1.7",
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
              images:
                  "https://th.bing.com/th/id/OIP.eEOle_210bzCRGpYznyLrAHaGl?w=192&h=180&c=7&r=0&o=5&pid=1.7",
            ),
          ],
        ),
      ),
    );
  }
}
