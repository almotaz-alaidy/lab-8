import 'package:flutter/material.dart';
import 'package:lab8/components/mytextwedget.dart';
import 'package:lab8/components/mywedget.dart';
import 'package:lab8/screens/Air%20condition.dart';
import 'package:lab8/screens/Air%20purifiers.dart';
import 'package:lab8/screens/Laotop.dart';
import 'package:lab8/screens/TV%20SCREEN.dart';
import 'package:lab8/screens/Wirless%20chargers.dart';
import 'package:lab8/screens/microwave.dart';
import 'package:lab8/screens/phone.dart';
import 'package:lab8/screens/refrigerators.dart';
import 'package:lab8/screens/speakers.dart';
import 'package:lab8/screens/washing%20machines.dart';
import 'package:lab8/screens/watches.dart';
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
            Divider(
              height: 30,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "phone",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 20,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Phone();
                  },
                ));
              },
              images:
                  "https://tiqny.com/wp-content/uploads/2022/08/%D9%87%D8%A7%D8%AA%D9%81-Samsung-Galaxy-Z-Flip-4-%D8%B1%D8%B3%D9%85%D9%8A%D8%A7%D9%8B-1.jpg",
            ),
            Divider(
              height: 30,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "speakers",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 20,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Speakers();
                  },
                ));
              },
              images:
                  "https://cf.shopee.ph/file/e60389f4cc7da5dc85c91ee4a17a67a7",
            ),
            Divider(
              height: 30,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "Air condition ",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 20,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AirCondition();
                  },
                ));
              },
              images: "https://i.ytimg.com/vi/l0LozDAcLWc/maxresdefault.jpg",
            ),
            Divider(
              height: 30,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "Air purifiers",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 20,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AirPurifiers();
                  },
                ));
              },
              images:
                  "https://thegoodguys.sirv.com/Content/2023FY/HubPages/samsung-air-purifiers/wk08/Group%204808.png",
            ),
            Divider(
              height: 30,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "watches",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 20,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Watches();
                  },
                ));
              },
              images:
                  "https://media.4rgos.it/i/Argos/0521-m0014-m007-m050-asym-m008-m022-samsung-wearables-header?maxW=768&qlt=75&fmt.jpeg.interlaced=true",
            ),
            Divider(
              height: 30,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "Wirless chargers",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 20,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return WirlwssCHargers();
                  },
                ));
              },
              images: "https://cdn.alza.cz/Foto/f5/SA/SAAC0220c.jpg",
            ),
            Divider(
              height: 30,
            ),
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextt: "Laotop",
              MyTextSize: 40,
            ),
            SizedBox(
              height: 20,
            ),
            MyContainer(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Laptop();
                  },
                ));
              },
              images:
                  "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/Samsung_Notebook_Flash_launches_in_South_Korea_October_2018.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
