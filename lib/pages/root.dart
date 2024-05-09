import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/controller/themeController.dart';
import 'package:mobile_app/pages/home.dart';
import 'package:mobile_app/pages/profile.dart';
import 'package:mobile_app/pages/orders.dart';


class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  PageController controller = PageController(
    initialPage: 0,
  );

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  late final ThemeController themeController;

  @override
  void initState() {
    super.initState();
    themeController = Get.put(ThemeController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.restaurant_menu),
        title: RichText(
          text: TextSpan(
            text: "R's ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontStyle: FontStyle.italic,
            ),
            children: [
              TextSpan(
                text: "Eats",
                style: TextStyle(color: Color(0xFFC2410C)),
              )
            ],
          ),
        ),
        actions: [
          GetBuilder<ThemeController>(builder: (_)=> Switch(
              value: themeController.isDark,
              onChanged: (state){
                print('printing $state');
                themeController.changeTheme(state);
              }
          )
          )

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 12.0),
          //   child: Icon(Icons.search),
          //
          // )
        ],
        backgroundColor: Colors.grey,
      ),
      body: PageView(
        controller: controller,
        onPageChanged: changePage,
        children: [
          HomePage(),
          OrderPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          // changePage(index);
          controller.jumpToPage(index);
        },
        // selectedItemColor: _currentIndex == controller.page?.toInt() ? Colors.green : null,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


