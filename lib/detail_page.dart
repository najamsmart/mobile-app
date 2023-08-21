import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Overload.....",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.merge(const TextStyle(fontSize: 32)),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/nft_logo.png',
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("aewsome paint")
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff343945),
                        shape: BoxShape.circle,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(
                elevation: 6,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: Stack(children: [
                  Positioned.fill(
                    child: Hero(
                      tag: "preview",
                      child: Image.asset(
                        "assets/image_awesome_1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff343945),
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.fullscreen,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff343945),
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.upload,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Color(0xff343945),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("500")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text("Ending in"),
                                          Text("8h 21m 12s")
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
