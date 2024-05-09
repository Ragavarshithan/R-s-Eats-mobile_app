// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: const RootPage(),
//     );
//   }
// }
//
// class RootPage extends StatefulWidget {
//   const RootPage({Key? key}) : super(key: key);
//
//   @override
//   State<RootPage> createState() => _RootPageState();
// }
//
// class _RootPageState extends State<RootPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Builder(
//           builder: (context) {
//             return IconButton(
//               icon: const Icon(Icons.menu),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//             );
//           },
//         ),
//         title: RichText(
//           text: const TextSpan(
//             text: "R's ",
//             style: TextStyle(color: Colors.black, fontSize: 24, fontStyle: FontStyle.italic),
//             children: [
//               TextSpan(
//                 text: "Eats",
//                 style: TextStyle(color: Color(0xFFC2410C)),
//               )
//             ],
//           ),
//         ),
//         actions: [
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 12.0),
//             child: Icon(Icons.search),
//           )
//         ],
//         backgroundColor: Colors.grey,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: const <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//               ),
//               child: Text(
//                 'Drawer Header',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               title: Text('Item 1'),
//
//             ),
//             ListTile(
//               title: Text('Item 2'),
//
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildMenuItem('Juice', [
//               'assets/images/juice/lemon.jpg',
//               'assets/images/juice/mango.jpg',
//               'assets/images/juice/orange.jpg',
//               'assets/images/juice/pomegranate.jpg',
//             ]),
//             _buildMenuItem('MilkShake', [
//               'assets/images/milkshake/1.jpg',
//               'assets/images/milkshake/2.jpg',
//               'assets/images/milkshake/3.jpg',
//               'assets/images/milkshake/4.jpg',
//             ]),
//             _buildMenuItem('Main Dishes', [
//               'assets/images/main/burger.jpg',
//               'assets/images/main/noodles.jpg',
//               'assets/images/main/pizza.jpg',
//               'assets/images/main/shawarma.jpg',
//             ])
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildMenuItem(String name, List<String> imagePaths) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             name,
//             style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 8),
//           CarouselSlider(
//             options: CarouselOptions(
//               height: 100.0,
//               enlargeCenterPage: true,
//               autoPlay: true,
//               aspectRatio: 16 / 9,
//               autoPlayCurve: Curves.fastOutSlowIn,
//               enableInfiniteScroll: true,
//             ),
//             items: imagePaths.map((imagePath) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Container(
//                     width: MediaQuery.of(context).size.width,
//                     margin: const EdgeInsets.symmetric(horizontal: 5.0),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       image: DecorationImage(
//                         image: AssetImage(imagePath),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// Widget _buildMenuItem(String name, List<String> imagePaths) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           name,
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 8),
//         CarouselSlider(
//           items: imagePaths.map((imagePath) => Image.asset(
//             imagePath,
//             width: 100.0,
//             fit: BoxFit.cover,
//           )).toList(),
//           options: CarouselOptions(
//             height: 100.0, // Adjust height as needed
//             enlargeCenterPage: true, // Enlarge center image slightly
//             viewportFraction: 0.8, // Show 80% of each image
//             autoPlay: true, // Enable autoplay for slideshow
//             autoPlayInterval: Duration(seconds: 3), // Change interval for autoplay
//           ),
//         ),
//       ],
//     ),
//   );
// }
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         body: Center(
//           child: MyHomePage(title: 'Techorin',),
//         ),
//       ),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyCustomWidget()));
//     setState(() {
//       _counter++;
//     });
//     print(_counter);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
