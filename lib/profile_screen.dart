import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {


  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: <Widget>[
        Image.asset('assets/plage.jpg'),
        Transform.translate(
          offset: Offset(0, 100),
          child: Column(
            children: <Widget>[
              _buildProfileImage(context),
              _buildProfileDetails(context),
              _buildActions(context),
            ],
          ),
        ),
      ],
    ),
  );
}


  // Widget _buildProfileImage(BuildContext context) {
  //   return Container(
  //     width: 200,
  //     height: 200,
  //     child: ClipOval(
  //       child: Image.asset(
  //         'assets/dog.jpg',
  //         fit: BoxFit.fitWidth,
  //       ),
  //     ),
  //   );
  // }

  Widget _buildProfileImage(BuildContext context) {
  return Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.white, // Optional: border color
        width: 4.0,          // Optional: border width
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 4,
          blurRadius: 10,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: ClipOval(
      child: Image.asset(
        'assets/dog.jpg',
        fit: BoxFit.cover,
      ),
    ),
  );
}


  Widget _buildProfileDetails(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Wolfram Barnovich',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
        ),
        _buildDetailsRow('Age', '4'),
        _buildDetailsRow('Status', 'Good Boy'),
      ],
    ),
  );
}

Widget _buildDetailsRow(String heading, String value) {
  return Row(
    children: <Widget>[
      Text(
        '$heading: ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(value),
    ],
  );
}

  // Widget _buildProfileDetails(BuildContext context) {
  //   return Container();
  // }

  // Widget _buildActions(BuildContext context) {
  //   return Container();
  // }

  Widget _buildActions(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      _buildIcon(Icons.restaurant, 'Feed'),
      _buildIcon(Icons.favorite, 'Pet'),
      _buildIcon(Icons.directions_walk, 'Walk'),
    ],
  );
}

Widget _buildIcon(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: <Widget>[
        Icon(icon, size: 40),
        Text(text),
      ],
    ),
  );
}



}
