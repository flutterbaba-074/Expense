import 'package:flutter/material.dart';
import 'package:ws_expance_app/global/dummyexpanse.dart';
import 'package:ws_expance_app/pages/AddExpense.dart';

class Allexpense extends StatelessWidget {
  const Allexpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the dummy data
    var data = Appstatic.dummyExpense;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Expense"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, superindex) {
                // Extract the current expense data
                var currentExpense = data[superindex];

                return Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ListTile(
                        // Display the date and amount of the expense
                        leading: Text(currentExpense.date),
                        trailing: Text(currentExpense.amt),
                      ),
                      // Display the transactions within the expense
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: currentExpense.transaction.length,
                        itemBuilder: (context, subindex) {
                          // Extract the current transaction data
                          var currentTransaction = currentExpense.transaction[subindex];

                          return ListTile(
                            // Display transaction details
                            title: Text(currentTransaction.desc),
                            trailing: Text(currentTransaction.amt),
                            leading: CircleAvatar(
                              // Display an image for the transaction category
                              backgroundImage: NetworkImage(currentTransaction.catImg),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      // Button to navigate to the AddExpense page
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddExpense()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
