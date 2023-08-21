import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_page.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF161618),
                Color(0xFF3E394D),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/nft_logo.png",
                    width: 30,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Duaa Anis",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    ".",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.merge(const TextStyle(color: Colors.yellow)),
                  ),
                  const Spacer(),
                  const Icon(Icons.menu_rounded)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "My folder",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.merge(const TextStyle(fontSize: 32)),
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (BuildContext context) {
                          return const DetailPage();
                        }));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 6,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Column(
                    children: [
                      Hero(
                          tag: "preview",
                          child: Image.asset("assets/image_awesome_1.jpg")),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "My Panit",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.merge(TextStyle(fontSize: 30)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 18,
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/nft_logo.png',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text("paint")
                                  ],
                                ),
                              ],
                            )),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "Rupee",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.merge(const TextStyle(
                                              color: Colors.black)),
                                    ),
                                    Text(
                                      "1000",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.merge(const TextStyle(
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 6,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: Column(
                  children: [
                    Image.asset("assets/image_awesome_2.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MY Painting",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.merge(TextStyle(fontSize: 30)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    child: ClipOval(
                                      child: Image.asset(
                                        'assets/nft_logo.png',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text("lovely * paint")
                                ],
                              ),
                            ],
                          )),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  Text(
                                    "Rupee",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.merge(const TextStyle(
                                            color: Colors.black)),
                                  ),
                                  Text(
                                    "1000",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.merge(const TextStyle(
                                            color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        dotIndicatorColor: Colors.white,
        backgroundColor: Colors.transparent,
        paddingR: const EdgeInsets.all(0),
        marginR: const EdgeInsets.all(5),
        selectedItemColor: Colors.white,
        items: [
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.search),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.show_chart),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
