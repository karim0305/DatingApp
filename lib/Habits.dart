import 'package:flutter/material.dart';

class Habits_Page extends StatefulWidget {
  const Habits_Page({super.key});

  @override
  State<Habits_Page> createState() => _Habits_PageState();
}

class _Habits_PageState extends State<Habits_Page> {
  List dropDownListData = [
    {"title": "BCA", "value": "1"},
    {"title": "MCA", "value": "2"},
    {"title": "B.Tech", "value": "3"},
    {"title": "M.Tech", "value": "4"},
  ];
  String defaultvalue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 245, 245),
      body: Column(
        children: [
          SafeArea(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.redAccent,
                      size: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 50),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 190, 196)),
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 50),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 201, 209, 213)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Text(
                      "Children",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    //Image.asset("lib/imagesrc/celebration.jpg")
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(219, 252, 251, 251),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                        value: defaultvalue,
                        icon: Icon(
                          // Add this
                          Icons.arrow_drop_down_sharp, // Add this
                          color: Colors.redAccent, // Add this
                        ),
                        items: [
                          const DropdownMenuItem(
                              child: Text(
                                "Select Option",
                              ),
                              value: ""),
                          ...dropDownListData
                              .map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']),
                                value: data['value']);
                          }).toList(),
                        ],
                        onChanged: (value) {
                          print("Selected value $value");
                          setState(() {
                            defaultvalue = value!;
                            print(defaultvalue);
                          });
                        }),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Alcohol",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    //Image.asset("lib/imagesrc/celebration.jpg")
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(163, 252, 251, 251),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                        value: defaultvalue,
                        icon: Icon(
                          // Add this
                          Icons.arrow_drop_down_sharp, // Add this
                          color: Colors.redAccent, // Add this
                        ),
                        items: [
                          const DropdownMenuItem(
                              child: Text(
                                "Select Option",
                              ),
                              value: ""),
                          ...dropDownListData
                              .map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']),
                                value: data['value']);
                          }).toList(),
                        ],
                        onChanged: (value) {
                          print("Selected value $value");
                          setState(() {
                            defaultvalue = value!;
                            print(defaultvalue);
                          });
                        }),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Smoking",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    //Image.asset("lib/imagesrc/celebration.jpg")
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          )),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cancel",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Done",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "No",
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(131, 186, 183, 183)),
                        child: Text(
                          "Yes",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "No but, i want",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "already Adults",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Yes But i want more",
                  style: TextStyle(fontSize: 12, letterSpacing: 3),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
