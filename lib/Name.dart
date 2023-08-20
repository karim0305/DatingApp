import 'package:flutter/material.dart';

class Name_Page extends StatefulWidget {
  const Name_Page({super.key});

  @override
  State<Name_Page> createState() => _Name_PageState();
}

class _Name_PageState extends State<Name_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(131, 218, 216, 216),
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
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 50),
                  decoration: BoxDecoration(color: Colors.redAccent),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 178, 190, 196)),
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
                  "Your First Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //Image.asset("lib/imagesrc/celebration.jpg")
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.back_hand_outlined,
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
                    hintText: "First Name",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 228, 226, 226),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
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
