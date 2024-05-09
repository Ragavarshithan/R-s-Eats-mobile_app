import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  int _currentIndex = 0;

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          _buildMenuItem('Main Dishes', [
            'assets/images/main/burger.jpg',
            'assets/images/main/noodles.jpg',
            'assets/images/main/pizza.jpg',
            'assets/images/main/shawarma.jpg',
          ], [
            'Burger',
            'Noodles',
            'Pizza',
            'Shawarma'
          ]),
          _buildMenuItem('Juice', [
            'assets/images/juice/lemon.jpg',
            'assets/images/juice/mango.jpg',
            'assets/images/juice/orange.jpg',
            'assets/images/juice/pineapple.jpg'
          ], [
            'Lemon',
            'Mango',
            'Orange',
            'Pine Apple'
          ]),
          _buildMenuItem('MilkShake', [
            'assets/images/milkshake/1.jpg',
            'assets/images/milkshake/2.jpg',
            'assets/images/milkshake/3.jpg',
            'assets/images/milkshake/4.jpg',
          ], [
            'Chocolate',
            'Blueberry',
            'Oreo',
            'Strawberry'
          ]),
          _buildMenuItem('Cakes', [
            'assets/images/cakes/cup cake.jpg',
            'assets/images/cakes/ice cream.jpg',
            'assets/images/cakes/lava cake.jpg',
            'assets/images/cakes/layer cake.jpg'
          ], [
            'Cup',
            'ice cream',
            'lava',
            'lava'
          ]),
          _buildMenuItem('Main Dishes', [
            'assets/images/main/burger.jpg',
            'assets/images/main/noodles.jpg',
            'assets/images/main/pizza.jpg',
            'assets/images/main/shawarma.jpg',
          ], [
            'Burger',
            'Noodles',
            'Pizza',
            'Shawarma'
          ]),
          _buildMenuItem('Main Dishes', [
            'assets/images/main/burger.jpg',
            'assets/images/main/noodles.jpg',
            'assets/images/main/pizza.jpg',
            'assets/images/main/shawarma.jpg',
          ], [
            'Burger',
            'Noodles',
            'Pizza',
            'Shawarma'
          ]),
          _buildMenuItem('Juice', [
            'assets/images/juice/lemon.jpg',
            'assets/images/juice/mango.jpg',
            'assets/images/juice/orange.jpg',
            'assets/images/juice/pineapple.jpg'
          ], [
            'Lemon',
            'Mango',
            'Orange',
            'Pine Apple'
          ]),
          _buildMenuItem('MilkShake', [
            'assets/images/milkshake/1.jpg',
            'assets/images/milkshake/2.jpg',
            'assets/images/milkshake/3.jpg',
            'assets/images/milkshake/4.jpg',
          ], [
            'Chocolate',
            'Blueberry',
            'Oreo',
            'Strawberry'
          ]),
          _buildMenuItem('Main Dishes', [
            'assets/images/main/burger.jpg',
            'assets/images/main/noodles.jpg',
            'assets/images/main/pizza.jpg',
            'assets/images/main/shawarma.jpg',
          ], [
            'Burger',
            'Noodles',
            'Pizza',
            'Shawarma'
          ]),
          _buildMenuItem('Main Dishes', [
            'assets/images/main/burger.jpg',
            'assets/images/main/noodles.jpg',
            'assets/images/main/pizza.jpg',
            'assets/images/main/shawarma.jpg',
          ], [
            'Burger',
            'Noodles',
            'Pizza',
            'Shawarma'
          ]),
        ],
      ),
    );
  }
}

Widget _buildMenuItem(
    String name, List<String> imagePaths, List<String> dishNames) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                // Add horizontal padding between images
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imagePaths[index],
                            width: 100,
                            height: 100,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Text(
                              dishNames[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.restaurant_menu),
//         title: RichText(
//           text: TextSpan(
//             text: "R's ",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 24,
//               fontStyle: FontStyle.italic,
//             ),
//             children: [
//               TextSpan(
//                 text: "Eats",
//                 style: TextStyle(color: Color(0xFFC2410C)),
//               )
//             ],
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 12.0),
//             child: Icon(Icons.search),
//           )
//         ],
//         backgroundColor: Colors.grey,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildMenuItem('Main Dishes', [
//               'assets/images/main/burger.jpg',
//               'assets/images/main/noodles.jpg',
//               'assets/images/main/pizza.jpg',
//               'assets/images/main/shawarma.jpg',
//             ], [
//               'Burger',
//               'Noodles',
//               'Pizza',
//               'Shawarma'
//             ]),
//             _buildMenuItem('Juice', [
//               'assets/images/juice/lemon.jpg',
//               'assets/images/juice/mango.jpg',
//               'assets/images/juice/orange.jpg',
//               'assets/images/juice/pineapple.jpg'
//             ], [
//               'Lemon',
//               'Mango',
//               'Orange',
//               'Pine Apple'
//             ]),
//             _buildMenuItem('MilkShake', [
//               'assets/images/milkshake/1.jpg',
//               'assets/images/milkshake/2.jpg',
//               'assets/images/milkshake/3.jpg',
//               'assets/images/milkshake/4.jpg',
//             ], [
//               'Chocolate',
//               'Blueberry',
//               'Oreo',
//               'Strawberry'
//             ]),
//             _buildMenuItem('Main Dishes', [
//               'assets/images/main/burger.jpg',
//               'assets/images/main/noodles.jpg',
//               'assets/images/main/pizza.jpg',
//               'assets/images/main/shawarma.jpg',
//             ], [
//               'Burger',
//               'Noodles',
//               'Pizza',
//               'Shawarma'
//             ]),
//             _buildMenuItem('Main Dishes', [
//               'assets/images/main/burger.jpg',
//               'assets/images/main/noodles.jpg',
//               'assets/images/main/pizza.jpg',
//               'assets/images/main/shawarma.jpg',
//             ], [
//               'Burger',
//               'Noodles',
//               'Pizza',
//               'Shawarma'
//             ]),
//             _buildMenuItem('Main Dishes', [
//               'assets/images/main/burger.jpg',
//               'assets/images/main/noodles.jpg',
//               'assets/images/main/pizza.jpg',
//               'assets/images/main/shawarma.jpg',
//             ], [
//               'Burger',
//               'Noodles',
//               'Pizza',
//               'Shawarma'
//             ]),
//             _buildMenuItem('Juice', [
//               'assets/images/juice/lemon.jpg',
//               'assets/images/juice/mango.jpg',
//               'assets/images/juice/orange.jpg',
//               'assets/images/juice/pineapple.jpg'
//             ], [
//               'Lemon',
//               'Mango',
//               'Orange',
//               'Pine Apple'
//             ]),
//             _buildMenuItem('MilkShake', [
//               'assets/images/milkshake/1.jpg',
//               'assets/images/milkshake/2.jpg',
//               'assets/images/milkshake/3.jpg',
//               'assets/images/milkshake/4.jpg',
//             ], [
//               'Chocolate',
//               'Blueberry',
//               'Oreo',
//               'Strawberry'
//             ]),
//             _buildMenuItem('Main Dishes', [
//               'assets/images/main/burger.jpg',
//               'assets/images/main/noodles.jpg',
//               'assets/images/main/pizza.jpg',
//               'assets/images/main/shawarma.jpg',
//             ], [
//               'Burger',
//               'Noodles',
//               'Pizza',
//               'Shawarma'
//             ]),
//             _buildMenuItem('Main Dishes', [
//               'assets/images/main/burger.jpg',
//               'assets/images/main/noodles.jpg',
//               'assets/images/main/pizza.jpg',
//               'assets/images/main/shawarma.jpg',
//             ], [
//               'Burger',
//               'Noodles',
//               'Pizza',
//               'Shawarma'
//             ]),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (int index) {
//           setState(() {
//             _currentIndex = index;
//             if (_currentIndex == 2) {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => ProfilePage()),
//               );
//             }
//             if (_currentIndex == 1) {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => OrderPage()),
//               );
//             }
//           });
//         },
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.card_travel),
//             label: 'Orders',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// Widget _buildMenuItem(
//     String name, List<String> imagePaths, List<String> dishNames) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//         SizedBox(height: 8),
//         Container(
//           height: 100,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: imagePaths.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   Stack(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.asset(
//                           imagePaths[index],
//                           width: 100,
//                           height: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 0,
//                         left: 0,
//                         right: 0,
//                         child: Container(
//                           color: Colors.black.withOpacity(0.5),
//                           padding:
//                           EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                           child: Text(
//                             dishNames[index],
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ],
//     ),
//   );
// }
