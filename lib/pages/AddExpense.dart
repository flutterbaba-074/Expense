import 'package:flutter/material.dart';
import 'package:ws_expance_app/CustomWidgets/Uihelper.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  String selectedTransactionType = 'Credit';
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    TextEditingController tcontroller = TextEditingController();
    TextEditingController Desccontroller = TextEditingController();
    TextEditingController amtcontroller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text('Add Expense'),
        backgroundColor: Colors.teal,
      ),
     // Set the background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Uihelper.CustomTextField(tcontroller, "Name your Expense", Icons.abc, true),
              SizedBox(height: 10),
              Uihelper.CustomTextField(Desccontroller, "Add Desc", Icons.abc, true),
              SizedBox(height: 10),
              Uihelper.CustomTextField(amtcontroller, "Enter amount", Icons.money, true),
              SizedBox(height: 10),
              DropdownButton(
                value: selectedTransactionType,
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      selectedTransactionType = newValue;
                    });
                  }
                },
                items: ['Credit', 'Debit'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return GridView.builder(
                        padding: EdgeInsets.all(20),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {

                          return Container(
                           decoration: BoxDecoration(
                               color: Colors.teal,
                             borderRadius: BorderRadius.circular(21)
                           ),
                          );
                        },
                      );
                    },
                  );
                },
                child: Text("Choose Expense"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black87,
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("ADD Expanse"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                foregroundColor: Colors.white
              ),),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
