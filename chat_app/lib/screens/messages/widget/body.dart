import 'package:chat_app/models/messages_model.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: ListView.builder(
                  itemCount: messageData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: messageData[index].isSender
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 200,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              padding: messageData[index].isText
                                  ? const EdgeInsets.all(15)
                                  : messageData[index].isAudio
                                      ? const EdgeInsets.all(15)
                                      : const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: messageData[index].isSender
                                    ? Colors.grey.shade400
                                    : Colors.green[600],
                              ),
                              child: messageData[index].isText == true
                                  ? typeText(index)
                                  : messageData[index].isVidio == true
                                      ? typeVideo()
                                      : messageData[index].isAudio == true
                                          ? typeAudio()
                                          : Container(),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 20,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.emoji_emotions,
                      color: Colors.black45,
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.black54.withOpacity(0.1),
                          filled: true,
                          contentPadding: const EdgeInsets.only(
                              left: 15, top: 3, bottom: 3, right: 15),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          suffixIcon: const Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: SizedBox(
                              width: 60,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.attach_file,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.camera_alt,
                                    color: Colors.black45,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.mic,
                      color: Colors.black45,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

// type audio
  Row typeAudio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
        Expanded(
          child: Container(
            height: 3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        )
      ],
    );
  }

// type vidio
  Container typeVideo() {
    return Container(
      height: 150,
      width: 100,
      padding: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade400,
      ),
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(8),
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: const Icon(
          Icons.play_arrow,
          color: Colors.green,
          size: 40,
        ),
      ),
    );
  }

// type text
  Text typeText(int index) {
    return Text(
      messageData[index].message,
      style: const TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
      softWrap: true,
    );
  }
}
