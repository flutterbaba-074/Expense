

import 'package:flutter/material.dart';
import 'package:ws_expance_app/pages/AllExpense.dart';
import 'package:ws_expance_app/pages/EditprofileScreen.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var usertotalmoney =1000;
    return Scaffold(

      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsjv8k9FpJH5AvquxbVyd06B5UludsXYeHuTLTGllucw&s"), // Replase with user's profile image
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Kuldeep singh', // Replace with the user's name
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'rathork523@gmail.com', // Replace with the user's email
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),

            Container(
              height: 1,
              width: double.infinity,
              color: Colors.black12,
            ),

            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(foregroundColor: Colors.white,
                  backgroundColor: Colors.black87),
              onPressed: () {

                // Add navigation to the edit profile screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => Allexpense()));
              },
              child: Text('Home'),

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileScreen()));
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}