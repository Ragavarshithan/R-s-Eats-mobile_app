import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/pages/auth/authPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  bool isLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildUser(
                'https://scontent.fcmb3-2.fna.fbcdn.net/v/t39.30808-6/315055069_1491524258016711_786696207971902785_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHOHH2EQxeE3LYqAzfD8NCndz03xainsnl3PTfFqKeyeVOGAMoVlSd4pgBnAu5_MHxQjAAJm4djO9gPMSP5njA0&_nc_ohc=KeSAkRLkyEMQ7kNvgEFsAlB&_nc_oc=AdhgQixgM1qvRWodL0hhSnrtTCLjcCE3Ht8IuihKG2VsBshkr4XT5pQ6RVp_lelTgvI&_nc_ht=scontent.fcmb3-2.fna&oh=00_AfCxgUW8BcgVIyeeBQi6cZzpcN3IYfCMWSQTsh9xAIw1aA&oe=663A997F',
                'Ravi Ragav',),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCard('Favorite', Icons.favorite),
                  _buildCard('wallet', Icons.wallet),
                  _buildCard('Offers', Icons.local_offer),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildCard('premium', Icons.star_rate),
            SizedBox(height: 20),
            _buildOther(Icons.family_restroom_sharp, 'Family',
                'Manage a family profile'),
            _buildOther(Icons.local_taxi, 'Ride', ''),
            _buildOther(Icons.local_offer, 'Promotion', ''),
            _buildOther(Icons.help_center, 'Help', ''),
            _buildOther(Icons.add_business, 'Setup your business profile',
                'Automate work travel & meal expenses'),
          SizedBox(height: 10),
          if(! isLoggedIn)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if(isLoggedIn == false)
                  ElevatedButton(
                      onPressed: (){},
                      child: Text('Sign Up')
                  ),
                if(isLoggedIn == false)
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AuthPage()),
                        );
                      },
                      child: Text('Sign In')
                  ),
              ],
            )
            else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                     FirebaseAuth.instance.signOut();
                     setState(() {
                       isLoggedIn = false;
                     });
                    },
                    child: Text('Log Out',
                      style: TextStyle(
                          color: Colors.red
                      ),
                    )
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}

Widget _buildUser(String pic, String userName) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              userName),
        ],
      ),
      CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(pic),
      ),
    ],
  );
}

Widget _buildCard(String name, IconData iconData, {bool isCustom = false}) {
  return Card(
    elevation: 4,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, size: 30),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Widget _buildOther(IconData iconData, String text, String sub) {
  return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey), // Top border
          bottom: BorderSide(color: Colors.grey), // Bottom border
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(iconData),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            sub,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          )
        ],
      ));
}
