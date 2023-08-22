import 'package:dating_app/Name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgePage extends StatefulWidget {
  const AgePage({super.key});

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 245, 245),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    decoration: const BoxDecoration(color: Colors.redAccent),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Text(
                  "Your Age",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //Image.asset("lib/imagesrc/celebration.jpg")
                Padding(
                  padding: EdgeInsets.all(3.0),
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
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Get.to(const NamePage());
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: const Color.fromARGB(255, 228, 226, 226),
                      ),
                      child: const Center(
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
