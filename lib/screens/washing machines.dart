import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lab8/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../components/mytextwedget.dart';
import '../components/mywedget.dart';

class Washing extends StatefulWidget {
  const Washing({super.key});

  @override
  State<Washing> createState() => _WashingState();
}

class _WashingState extends State<Washing> {
  String MyGroupVal = "";
  bool MyVal = false;
  bool myval = false;
  List MyListItem = ["1", "2", "3", "4"];
  String SelectedItem = "1";
  final VideoURL = "https://www.youtube.com/watch?v=rJl6Bt_pSOE";
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final VideoID = YoutubePlayer.convertUrlToId(VideoURL);
    _controller = YoutubePlayerController(initialVideoId: VideoID!);
    flags:
    YoutubePlayerFlags(
      autoPlay: false,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 156, 161),
        title: Text(
          "washing machines",
          style: TextStyle(
              fontFamily: "DancingScript-VariableFont_wght", fontSize: 40),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 166, 230, 248),
          Color.fromARGB(255, 0, 156, 161)
        ])),
        child: ListView(
          children: [
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextSize: 40,
              MyTextt: "SAMSUNG WASHING MACHINE",
            ),
            SizedBox(
              height: 20,
            ),
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
                print("IM READY");
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
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyContainer(
              OnTap: () {},
              images:
                  "https://images.samsung.com/is/image/samsung/p6pim/latin_en/feature/163912976/latin_en-feature-a-new-way-of-washing-531136026?\$FB_TYPE_K_JPG\$",
            ),
            SizedBox(
              height: 20,
            ),
            MyText(
                MyFontFamily: "Combo-Regular",
                MyTextSize: 40,
                MyTextt: "select the color :"),
            RadioListTile(
              title: Text(
                "black",
                style: TextStyle(fontSize: 20),
              ),
              value: "value",
              groupValue: MyGroupVal,
              onChanged: (value) {
                setState(() {
                  MyGroupVal = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text(
                "white",
                style: TextStyle(fontSize: 20),
              ),
              value: "valu",
              groupValue: MyGroupVal,
              onChanged: (value) {
                setState(() {
                  MyGroupVal = value.toString();
                });
              },
            ),
            Divider(
              height: 20,
            ),
            MyText(
                MyFontFamily: "Combo-Regular",
                MyTextSize: 40,
                MyTextt: "Choose the Size :"),
            CheckboxListTile(
              title: Text(
                "Size 8 KG",
                style: TextStyle(fontSize: 20),
              ),
              value: MyVal,
              onChanged: (value) {
                setState(() {
                  MyVal = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text(
                "Size 7 KG",
                style: TextStyle(fontSize: 20),
              ),
              value: myval,
              onChanged: (value) {
                setState(() {
                  myval = value!;
                });
              },
            ),
            MyText(
                MyFontFamily: "Combo-Regular",
                MyTextSize: 40,
                MyTextt: "how many do want ?"),
            DropdownButton(
              value: SelectedItem,
              items: MyListItem.map(
                (e) => DropdownMenuItem(value: e, child: Text("$e")),
              ).toList(),
              onChanged: (value) {
                setState(() {
                  SelectedItem = value.toString();
                });
              },
            ),
            ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 166, 230, 248))),
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ));
                });
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 0, 156, 161),
              ),
              label: Text(
                "GO TO HOME PAGE ",
                style: TextStyle(
                    fontFamily: "DancingScript-VariableFont_wght",
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 156, 161)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
