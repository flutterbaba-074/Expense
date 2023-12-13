import 'package:flutter/material.dart';
import 'package:ws_expance_app/models/expense_model.dart';
 class Appstatic{

   static List<ExpenseModel>dummyExpense =[
      ExpenseModel(date: "12/12/23", amt: "20000", transaction: [

        ExpenseDetails(title: "cofee", desc: "family", amt: "500", balance: "15000",
     catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
   ],



      ),

     ExpenseModel(date: "13/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "tea", desc: "culliges", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],



     ),

     ExpenseModel(date: "14/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "movie", desc: "freinds", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],



     ),
     ExpenseModel(date: "15/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "patrol", desc: "bike ke liye", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],



     ),
     ExpenseModel(date: "16/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "recharge", desc: "papa", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],



     ),
     ExpenseModel(date: "17/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "mandir", desc: "bhagvan jee ke", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],




     ),
     ExpenseModel(date: "13/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "bhai", desc: "pocket money", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],



     ),

   ];

 }