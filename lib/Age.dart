import 'package:flutter/material.dart';

class Age_Page extends StatefulWidget {
  const Age_Page({super.key});

  @override
  State<Age_Page> createState() => _Age_PageState();
}

class _Age_PageState extends State<Age_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(57, 182, 245, 243),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    decoration: BoxDecoration(color: Colors.redAccent),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Your Age",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //Image.asset("lib/imagesrc/celebration.jpg")
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.celebration_outlined,
                    size: 30,
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(50)),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Age",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 228, 226, 226),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    )),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 228, 226, 226),
                      ),
                      child: Center(
                          child: Text(
                        "Next",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black12),
                      )),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
