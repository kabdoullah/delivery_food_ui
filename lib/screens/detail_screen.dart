import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFF9884A),
                  Color(0xFFF8556A),
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                    bottom: 20,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "2 Items",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            const Text("\$${19.24}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            Container(
                                height: 50,
                                width: 60,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                                child: const Icon(
                                  Icons.store,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.3,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Text(
                      "Grilled Beef Steak with Sauce ABC",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "By Resto Parmato Bapo",
                    style: TextStyle(
                      color: Color(0xFFD5D6DB),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    height: 320,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color(0xFF151516).withAlpha(50),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Text(
                                    "⭐  4.9",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color(0xFF151516).withAlpha(50),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Text(
                                    "🛵 20 min",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF272A32),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF363943),
                                          shape: BoxShape.circle,
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Transform.rotate(
                                        angle: 54.97,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          right: -150,
                          top: 0,
                          child: Container(
                            height: 300,
                            width: 500,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/sauce.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Text(
                          " Amet minim mollit non deserunt est ullamco est sit aliqua dolor do amet sint. Velt officia constat du veniom consequat coseqtures adipsing content. ",
                          style: TextStyle(
                            fontSize: 14,
                          
                            
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
