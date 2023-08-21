import 'package:flutter/material.dart';

class Add_P extends StatefulWidget {
  const Add_P({super.key});

  @override
  State<Add_P> createState() => _Add_PState();
}

class _Add_PState extends State<Add_P> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(131, 218, 216, 216),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Text(
                  "Let's meet?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Image(
                  image: AssetImage(
                    "lib/imagesrc/ico-slider.png",
                  ),
                  height: 20,
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/imagesrc/selfie.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "You have no photo!",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Nobody will see you without a photo!"),
                        Text("Upload a Photo to start daing"),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Add Photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                        child: Text(
                          "x",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Text(
                        "April, 21",
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.heart_broken),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Icon(Icons.search),
                                Text("Friendship and Communication"),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Icon(Icons.circle_notifications_rounded),
                                Text("No but i want"),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [Icon(Icons.chat_rounded), Text("Chat")],
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
