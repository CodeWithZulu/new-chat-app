import 'package:flutter/material.dart';
import 'package:mychatapp/models/message_model.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
          title: const Text(
            "CERESENSE CHAT",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.chat_rounded,
            color: Colors.white,
          ),
        ),
        body: ListView.builder(
          itemCount: messagescreen.length,
          itemBuilder: ((context, index) {
            Message yarn = messagescreen[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(yarn.sender.profilepicture),
                            radius: 35,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 300,
                            // color: Colors.green,
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      yarn.sender.name,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // const Spacer(),
                                    Text(
                                      yarn.time,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    yarn.text,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    overflow: TextOverflow.visible,
                                    maxLines: 3,
                                    // overflow: TextOverflow.ellipsis,
                                    // maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          yarn.sender.isOffline
                              ? const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 5,
                                )
                              : const CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 5,
                                )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
