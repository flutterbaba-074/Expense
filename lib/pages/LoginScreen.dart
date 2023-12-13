import 'package:flutter/material.dart';
import 'package:ws_expance_app/CustomWidgets/Uihelper.dart';
import 'package:ws_expance_app/pages/AllExpense.dart';
import 'package:ws_expance_app/pages/UserProfileScreen.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller =TextEditingController();
    TextEditingController Passcontroller =TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Spendo",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 40,fontStyle:FontStyle.italic),),
          SizedBox(
            height: 10,
          ),
          Text("Expense made easy",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15),),



          Uihelper.CustomTextField(emailcontroller, "email",  Icons.email, true),
          Uihelper.CustomTextField(Passcontroller, "password",  Icons.password, false),
          Uihelper.CustomButton(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfileScreen()));
          }, "Login")
        ],
      ),
    );
  }
}
