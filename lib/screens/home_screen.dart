import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Container(
          padding: const EdgeInsets.only(top: 40, left: 20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFFDE9CF),
                Color(0xFFFFFFFF),
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Delivery",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Bocangan Sambit",
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: CircleAvatar(backgroundImage: AssetImage("assets/images/a.png"),),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 80, 79, 77),
                          ),
                        ),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "What would you loke to eat?",
                            hintStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                            contentPadding: EdgeInsets.all(10),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Choose Category",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 5.0),
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            height: 60,
                            width: 80,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/b.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Main", textAlign: TextAlign.center),
                          ),
                        )
                      ]),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Main Course",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pink,
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 10,
                          left: 10,
                          child: Text(
                            "Salad",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -20,
                          right: -80,
                          child: Container(
                            height: 150,
                            width: 250,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/im.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ))
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
              Icons.favorite_border,
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
                      height: 20,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Center(
                          child: Text(
                        "2",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            label: "Shop"),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Color(0xFFA1A8B1),
            ),
            label: "Settings"),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFFA1A8B1),
            ),
            label: "Person"),
      ]),
    );
  }
}
