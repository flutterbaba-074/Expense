import 'package:flutter/material.dart';
class  Uihelper{
  static CustomTextField(TextEditingController controller,String text,IconData iconData,bool ToHide) {
    return Padding(padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15
    ), child: TextField(
      controller: controller,
      obscureText: ToHide,
      decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24)
          )
      ),
    ));
  }
  static CustomButton(VoidCallback voidCallback,String text){
    return SizedBox(height: 45,width: 240,child: ElevatedButton(onPressed: (){
      voidCallback();
    },style: ElevatedButton.styleFrom(backgroundColor: Colors.black87,shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
        child: Text(text,style: TextStyle(fontSize: 20,color: Colors.white),
        )),);
  }


}