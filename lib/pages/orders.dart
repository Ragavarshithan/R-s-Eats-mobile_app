import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool _showOrders = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Orders',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _showOrders = true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: _showOrders ? Colors.black : Colors.transparent,
                      width: 3.0,
                    ),
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.view_list),
                    SizedBox(width: 5),
                    Text(
                      'Orders',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  _showOrders =
                      false; // Set _showOrders to false for "Reorder" button
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: !_showOrders ? Colors.black : Colors.transparent,
                      width: 3.0,
                    ),
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.refresh_sharp),
                    SizedBox(width: 5),
                    Text(
                      'Reorder',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        _showOrders
            ? Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    _buildMyOrders(
                      'assets/images/milkshake/1.jpg',
                      'Chocalate milkshake',
                      7,
                      'May 2 2024',
                      false,
                    ),
                    _buildMyOrders(
                      'assets/images/main/pizza.jpg',
                      'Pizza',
                      2,
                      'May 1 2024',
                      true,
                    ),
                    _buildMyOrders(
                      'assets/images/juice/orange.jpg',
                      'Orange juice',
                      5,
                      'Jan 04 2024',
                      true,
                    ),
                    _buildMyOrders(
                      'assets/images/main/noodles.jpg',
                      'Noodles',
                      1,
                      'Oct 11 2023',
                      true,
                    ),
                    _buildMyOrders(
                      'assets/images/main/shawarma.jpg',
                      'Shawarma',
                      3,
                      'Oct 11 2023',
                      false,
                    ),
                    _buildMyOrders(
                      'assets/images/main/burger.jpg',
                      'Burger',
                      4,
                      'Sep 15 2023',
                      true,
                    ),
                    _buildMyOrders(
                      'assets/images/juice/pineapple.jpg',
                      'Pineapple',
                      2,
                      'Aug 16 2023',
                      true,
                    ),
                    _buildMyOrders(
                      'assets/images/milkshake/1.jpg',
                      'Chocalate milkshake',
                      4,
                      'Aug 14 2023',
                      true,
                    ),
                  ],
                ),
              )
            : Container(),
        SizedBox(height: 20),
        _showOrders
            ? Container()
            : Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    _buildMyOrders(
                      'assets/images/milkshake/1.jpg',
                      'Chocalate milkshake',
                      7,
                      'May 2 2024',
                      false,
                    ),
                    _buildMyOrders(
                      'assets/images/main/pizza.jpg',
                      'Pizza',
                      2,
                      'May 1 2024',
                      true,
                    ),
                  ],
                ),
              )
      ],
    );
  }

  Widget _buildMyOrders(String pic, String name, int quantity, String dateTime,
      bool isCompleted) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(12)),
            CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage(pic),
            ),
            SizedBox(width: 40),
            Container(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(quantity.toString()),
                      SizedBox(width: 8),
                      Text('items'),
                    ],
                  ),
                  Text(dateTime),
                  Text(
                    isCompleted ? 'Completed' : 'Cancelled',
                    style: TextStyle(
                      color: isCompleted ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the view button
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
              ),
              child: Text(
                'view',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
          height: 15,
        ), // Add Divider widget between records
      ],
    );
  }
}
