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
      backgroundColor: Color.fromARGB(255, 248, 245, 245),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),

              ///color: Colors.red,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    const Text(
                      "Let's meet?",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Image(
                      image: AssetImage(
                        "lib/imagesrc/ico-slider.png",
                      ),
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("lib/imagesrc/selfie.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              "You have no photo!",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            const Text("Nobody will see you without a photo!"),
                            const Text("Upload a Photo to start daing"),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                "Add Photo",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 300,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            child: const Text(
                              "x",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    "April, 21",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.heart_broken),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
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
                                child: const Row(
                                  children: [
                                    Icon(Icons.search),
                                    Text("Friendship and Communication"),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Row(
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Column(
                        children: [Icon(Icons.chat_rounded), Text("Chat")],
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "about me",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.photo_album_sharp,
                  size: 50,
                ),
                Icon(
                  Icons.heart_broken_outlined,
                  size: 50,
                ),
                Icon(
                  Icons.chat_bubble_outline,
                  size: 50,
                ),
                Icon(
                  Icons.person_3_sharp,
                  size: 50,
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black,
            ),
          )
        ],
      )),
    );
  }
}
