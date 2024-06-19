import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:my_app/BoxScrolls/csx.dart';
import 'package:my_app/Home_screen/Drawer.dart';
import 'package:my_app/model/Boxfours.dart';
import 'package:my_app/views/Background/background_display.dart';
import 'package:my_app/views/E-book/E-Books.dart';
import 'package:my_app/views/Num_Home/main_Home_display.dart';
import 'package:my_app/views/Stores/main_store_book.dart';
import 'package:my_app/views/Textbook/Textbooks.dart';
import 'package:my_app/views/library/main_library_display.dart';
import 'package:my_app/views/Bookmark/main_Book_mark.dart';
import 'package:my_app/views/favorites/main_favorites_display.dart';
import 'package:my_app/views/Menu_Book/main_menu_book.dart';
import '../image_1/Image_V1.dart';
import '../model/Boxfours.dart';

class body_screen extends StatefulWidget {
  const body_screen({super.key});

  @override
  State<body_screen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<body_screen> {
  int pages = 0;
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            child: ImageSlideshow(
              indicatorColor: Colors.blue,
              onPageChanged: (value) {
                // debugPrint('Page changed: $value');
              },
              autoPlayInterval: 2000,
              isLoop: true,
              children: imagePaths.map((path) {
                return ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    path,
                    width: 450,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 380,
                  width: 390,
                  decoration: BoxDecoration(
                    gradient: const RadialGradient(colors: [
                      // Color.fromARGB(255, 121, 255, 109),
                      // Color.fromARGB(255, 61, 61, 253),
                      // Color.fromARGB(255, 148, 255, 138),
                      // Color.fromARGB(255, 248, 120, 255),
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                    ]),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home_display()),
                              );
                              print("Container pressed!");
                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                gradient: const RadialGradient(colors: [
                                  // Color.fromARGB(255, 250, 250, 250),
                                  // Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 254, 254, 254),
                                ]),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(103, 192, 191, 191),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Home_display()),
                                      );
                                    },
                                    icon: const Icon(
                                      // Icons.qr_code_scanner_sharp,
                                      Icons.home,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 9, 73, 125),
                                    iconSize: 55,
                                  ),
                                  const Text(
                                    "Home",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const main_library_display()),
                              );
                              print("Container pressed!");
                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                gradient: const RadialGradient(colors: [
                                  // Color.fromARGB(255, 250, 250, 250),
                                  // Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 254, 254, 254),
                                ]),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(103, 192, 191, 191),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const main_library_display()),
                                      );
                                    },
                                    icon: const Icon(
                                        // Icons.account_balance_wallet,
                                        Icons.library_books),
                                    color:
                                        const Color.fromARGB(255, 9, 73, 125),
                                    iconSize: 55,
                                  ),
                                  const Text(
                                    "library Book",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Book_mark()),
                              );
                              print("Container pressed!");
                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                gradient: const RadialGradient(colors: [
                                  // Color.fromARGB(255, 250, 250, 250),
                                  // Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 254, 254, 254),
                                ]),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(103, 192, 191, 191),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Book_mark()),
                                      );
                                    },
                                    icon: const Icon(
                                      // Icons.credit_card_rounded,
                                      Icons.bookmark,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 9, 73, 125),
                                    iconSize: 55,
                                  ),
                                  const Text(
                                    "Bookmark",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Store_Book()),
                              );
                              print("Container pressed!");
                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                gradient: const RadialGradient(colors: [
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 254, 254, 254),
                                ]),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(103, 192, 191, 191),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Store_Book()),
                                      );
                                    },
                                    icon: const Icon(
                                      // Icons.monetization_on,
                                      Icons.store,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 9, 73, 125),
                                    iconSize: 55,
                                  ),
                                  const Text(
                                    "Store Book",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Menu_books()),
                              );
                              print("Container pressed!");
                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                gradient: const RadialGradient(colors: [
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 254, 254, 254),
                                ]),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(103, 192, 191, 191),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Menu_books()),
                                      );
                                    },
                                    icon: const Icon(
                                      // Icons.swap_horizontal_circle,
                                      Icons.menu_book_rounded,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 9, 73, 125),
                                    iconSize: 55,
                                  ),
                                  const Text(
                                    "Menu Book",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const favorites_display()),
                              );
                              print("Container pressed!");
                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                gradient: const RadialGradient(colors: [
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 254, 254, 254),
                                ]),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(103, 192, 191, 191),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const favorites_display()),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.star_border_outlined,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 9, 73, 125),
                                    iconSize: 55,
                                  ),
                                  const Text(
                                    "Favorites",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const E_Books_display()),
                              );
                              print("Container pressed!");
                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                gradient: const RadialGradient(colors: [
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 254, 254, 254),
                                ]),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(103, 192, 191, 191),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const E_Books_display()),
                                      );
                                    },
                                    icon: const Icon(
                                      // Icons.monetization_on,
                                      Icons.cached_outlined,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 9, 73, 125),
                                    iconSize: 55,
                                  ),
                                  const Text(
                                    "E-Book",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Background_display()),
                              );
                              print("Container pressed!");
                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                gradient: const RadialGradient(colors: [
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 254, 254, 254),
                                ]),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(103, 192, 191, 191),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Background_display()),
                                      );
                                    },
                                    icon: const Icon(
                                      // Icons.swap_horizontal_circle,
                                      Icons.swap_vertical_circle,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 9, 73, 125),
                                    iconSize: 55,
                                  ),
                                  const Text(
                                    "Background ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //TextBook
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const textbook_display()),
                              );
                              print("Container pressed!");
                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                gradient: const RadialGradient(colors: [
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 254, 254, 254),
                                ]),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(103, 192, 191, 191),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const textbook_display()),
                                      );
                                    },
                                    icon: const Icon(
                                      // Icons.swap_horizontal_circle,
                                      Icons.text_fields_rounded,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 9, 73, 125),
                                    iconSize: 55,
                                  ),
                                  const Text(
                                    "TEXTBOOK ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: HomeScreenData2.listItems.map((item) {
                  return BoxWidget(item: item);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawering(),
    );
  }

  final List<String> imagePaths = [
    'assets/Slider/ecommerce_image.jpg',
    'assets/Slider/Poster_macbook.png',
    'assets/Slider/Poster_Phone.png',
    'assets/Slider/Poster_watch.png',
    'assets/Slider/Poster_Monitor.png',
    'assets/Slider/Poster_TV.png',
    'assets/Slider/Poster_Discount.png',
  ];
}

class BoxWidget extends StatelessWidget {
  final Box item;

  const BoxWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => item.route,
          ),
        );
      },
      child: Container(
        width: 120,
        height: 100,
        margin: const EdgeInsets.only(top: 30, bottom: 28, left: 10, right: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF131B53).withOpacity(0.8),
              blurRadius: 8,
            ),
          ],
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 30,
              width: 30,
              margin: const EdgeInsets.only(right: 50, top: 10, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 52, 71, 120),
              ),
              child: Center(
                child: Icon(
                  item.icon,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: 100,
              child: Text(
                item.name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: 100,
              child: Text(
                item.text,
                style: const TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
