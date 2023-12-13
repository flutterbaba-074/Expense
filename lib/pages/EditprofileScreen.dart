import 'package:flutter/material.dart';
import 'package:ws_expance_app/CustomWidgets/Uihelper.dart';
import 'package:ws_expance_app/pages/AllExpense.dart';
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller =TextEditingController();
    TextEditingController emailcontroller =TextEditingController();
    TextEditingController biocontroller =TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Uihelper.CustomTextField(emailcontroller, "Enter email", Icons.drive_file_rename_outline_rounded, true),
          Uihelper.CustomTextField(namecontroller, "Enter name", Icons.drive_file_rename_outline_rounded, true),
          Uihelper.CustomTextField(biocontroller, "Enter bio", Icons.drive_file_rename_outline_rounded, true),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Allexpense()));
          }, child: Text("Home"),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                foregroundColor: Colors.white
            ),),

        ],
      ),
    );
  }
}
