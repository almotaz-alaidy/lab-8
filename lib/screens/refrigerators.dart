// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lab8/components/mytextwedget.dart';
import 'package:lab8/components/mywedget.dart';

import '../main.dart';

class REFRIGERATORS extends StatefulWidget {
  REFRIGERATORS({super.key});

  @override
  State<REFRIGERATORS> createState() => _REFRIGERATORSState();
}

class _REFRIGERATORSState extends State<REFRIGERATORS> {
  String MyGroupVal = "";
  bool MyVal = false;
  bool myval = false;
  List MyListItem = ["1", "2", "3", "4"];
  String SelectedItem = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 156, 161),
        title: Text(
          "REFRIGERATORS",
          style: TextStyle(fontFamily: "DancingScript-VariableFont_wght"),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
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
              MyTextt: "SAMSUNG",
            ),
            MyContainer(
              OnTap: () {},
              images:
                  "https://th.bing.com/th/id/OIP.grXPn_ilsDtynmsqqMZq7QHaFr?w=233&h=180&c=7&r=0&o=5&pid=1.7",
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
                MyTextt: "Choose storage size :"),
            CheckboxListTile(
              title: Text(
                "Size 800 liters",
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
                "Size 1000 liters",
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
