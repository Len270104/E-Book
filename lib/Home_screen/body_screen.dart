import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:my_app/Home_screen/Drawer.dart';
import 'package:my_app/Home_screen/main_data.dart';
import 'package:my_app/views/Background/background_display.dart';
import 'package:my_app/views/E-book/E-Books.dart';
import 'package:my_app/views/Num_Home/main_Home_display.dart';
import 'package:my_app/views/Textbook/Textbooks.dart';
// import 'package:my_app/views/aba_scan/main_scan_display.dart';
import 'package:my_app/views/library/main_library_display.dart';
import 'package:my_app/views/Bookmark/main_Book_mark.dart';
import 'package:my_app/views/favorites/main_favorites_display.dart';
import 'package:my_app/views/Stores/main_store_book.dart';
import 'package:my_app/views/Menu_Book/main_menu_book.dart';

// import '../Book_list/Book_card.dart';
// import '../Book_list/Book_card.dart';
// import '../Book_list/item_book.dart';
import '../image_1/Image_V1.dart';
// import 'google_fonts';

class body_screen extends StatefulWidget {
  const body_screen({super.key});

  @override
  State<body_screen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<body_screen> {
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
                    // boxShadow: const [
                    //   BoxShadow(
                    //     // color: Color.fromARGB(255, 183, 183, 183),
                    //     offset: Offset(
                    //       1.0,
                    //       5.0,
                    //     ),
                    //     blurRadius: 10.0,
                    //     spreadRadius: 3.0,
                    //   ), //BoxShadow
                    //   BoxShadow(
                    //     // color: Color.fromARGB(255, 154, 156, 164),
                    //     offset: Offset(1, 1),
                    //     blurRadius: 3,
                    //     spreadRadius: 10,
                    //   ), //BoxShadow
                    // ],
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
                                        const TextBooks_display()),
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
                                                const TextBooks_display()),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.text_fields_sharp,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 9, 73, 125),
                                    iconSize: 55,
                                  ),
                                  const Text(
                                    "TextBook",
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
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Image_V1(),
                  // builder: (context) => const Book_card(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.8),
              child: Container(
                height: 300,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 2.0,
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/16.jpg"),
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2.0,
                      ),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/16.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2.0,
                      ),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/16.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// only image ///

          // Image.asset("assets/images/16.jpg"),

          /// list Book ///

          // Padding(
          //   padding: const EdgeInsets.only(left: 15, right: 15),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           const Text(
          //             "List Books",
          //             style: TextStyle(
          //               fontSize: 20,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //           TextButton(
          //             onPressed: () => Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) =>
          //                     const Book_card(), //go to folder food_screen
          //               ),
          //             ),
          //             child: const Text(
          //               "View all",
          //               style: TextStyle(
          //                 fontSize: 15,
          //                 fontWeight: FontWeight.w700,
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //       // const SizedBox(height: 5),
          //       // SingleChildScrollView(
          //       //   scrollDirection: Axis.horizontal,
          //       //   child: Row(
          //       //     children: List.generate(
          //       //       books.length,
          //       //       (index) => GestureDetector(
          //       //         onTap: () {},
          //       //         child: Container(
          //       //           margin: const EdgeInsets.only(right: 10),
          //       //           width: 182,
          //       //           child: Stack(
          //       //             children: [
          //       //               Column(
          //       //                 crossAxisAlignment: CrossAxisAlignment.start,
          //       //                 children: [
          //       //                   Container(
          //       //                     width: double.infinity,
          //       //                     height: 200,
          //       //                     decoration: BoxDecoration(
          //       //                       borderRadius: BorderRadius.circular(15),
          //       //                       image: DecorationImage(
          //       //                         image: AssetImage(books[index].image),
          //       //                         fit: BoxFit.fill,
          //       //                       ),
          //       //                     ),
          //       //                   ),
          //       //                   const SizedBox(height: 10),
          //       //                   Text(
          //       //                     books[index].name,
          //       //                     style: const TextStyle(
          //       //                       fontSize: 18,
          //       //                       fontWeight: FontWeight.bold,
          //       //                     ),
          //       //                   ),
          //       //                 ],
          //       //               ),
          //       //             ],
          //       //           ),
          //       //         ),
          //       //       ),
          //       //     ),
          //       //   ),
          //       // ),
          //     ],
          //   ),
          // ),
        ],
      ),

      // drawer: const Drawering(),
      drawer: const Drawering(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(50.0), // Set your desired corner radius
        ),
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 7,
        shape: const CircularNotchedRectangle(),
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const main_data()),
                  );
                },
                icon: const Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow)),
            const SizedBox(width: 40),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          ],
        ),
      ),
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

  // Future<void> _launchURL(String url) async {
  //   if (!await canLaunchUrl(Uri.parse(url))) {
  //     throw 'this link can not open $url';
  //   }
  //   await launchUrl(Uri.parse(url));
  // }

  // Widget popular() {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 15, right: 15),

  //   );
  // }
}
