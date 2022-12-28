import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: const [
                Text(
                  "Hello Azalea 👋",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Text(
                  "it's lunch time",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ],
            )
          ]),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Column(
            children: [
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFF2F6FC),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color(0xFFF8BC5C),
                      size: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: const [
                          Text(
                            "Your delivery address",
                            style: TextStyle(fontSize: 12),
                          ),
                        ]),
                        Row(
                          children: const [
                            Text(
                              "JL Jendral Sudirman no. 80 A. Ponorogo",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      (Icons.arrow_forward_ios),
                      size: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Category",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 7,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(right: 10),
                            height: MediaQuery.of(context).size.height / 8,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/sala.png"),
                                fit: BoxFit.cover
                              ),
                            
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 8, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Nearby Food",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFFC1C6CB),
                    size: 20,
                  ),
                  Text(
                    "Bancangan, Sambit",
                    style: TextStyle(color: Color(0xFFC1C6CB)),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height / 2.8,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(children: [
                        Expanded(
                            child: Stack(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/s.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              top: 20,
                              left: 10,
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xFF151516).withAlpha(50),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Text(
                                  "⭐  4.9",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.all(8),
                          color: const Color(0xFFFDFDFD),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  "Spaghetti with Spicy Mixed Seafood",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('\$${800}')
                            ],
                          ),
                        ))
                      ]),
                    );
                  },
                  itemCount: 2,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFFA1A8B1),
            ),
            activeIcon: Icon(
              Icons.home,
              color: Color(0xFFFC461D),
            ),
            label: "Home"),
        const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.heart,
              color: Color(0xFFA1A8B1),
            ),
            label: "Heart"),
        BottomNavigationBarItem(
            icon: Container(
              height: 50,
              width: 60,
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              // ignore: prefer_const_constructors
              child: Stack(
                children: [
                  Positioned(
                    left: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.store),
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                      right: 5,
                      child: Container(
                        height: 15,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.white)),
                      ))
                ],
              ),
            ),
            label: "Shop"),
        const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.settings,
              color: Color(0xFFA1A8B1),
            ),
            label: "Settings"),
        const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              color: Color(0xFFA1A8B1),
            ),
            label: "Person"),
      ]),
    );
  }
}
