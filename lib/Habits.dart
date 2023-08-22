import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'relation_page.dart';

class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
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
      backgroundColor: const Color.fromARGB(255, 248, 245, 245),
      body: Column(
        children: [
          SafeArea(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.redAccent,
                      size: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 50),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 178, 190, 196)),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 50),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 201, 209, 213)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  children: [
                    Text(
                      "Children",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    //Image.asset("lib/imagesrc/celebration.jpg")
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(219, 252, 251, 251),
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
                        icon: const Icon(
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
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      "Alcohol",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    //Image.asset("lib/imagesrc/celebration.jpg")
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(163, 252, 251, 251),
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
                        icon: const Icon(
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
                                child: Text(data['Title']),
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
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      "Smoking",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    //Image.asset("lib/imagesrc/celebration.jpg")
                  ],
                ),
                const SizedBox(
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
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Cancel",
                      style: TextStyle(fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const RelationPage());
                      },
                      child: const Text(
                        "Done",
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "No",
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(131, 186, 183, 183)),
                        child: const Text(
                          "Yes",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "No but, i want",
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  "already Adults",
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
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
