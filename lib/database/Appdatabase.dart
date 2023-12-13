import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import '../models/expense_model.dart';

class AppDataBase {
  //Singleton
  AppDataBase._();

  static final AppDataBase db = AppDataBase._();

  //expense
  static final String TABLE_NAME = "expense";
  static final String COLUMN_ID = "eId";
  static final String COLUMN_TITLE = "eTitle";
  static final String COLUMN_DESC = "eDesc";
  static final String COLUMN_TYPE = "eType";
  static final String COLUMN_EXPENSE_CAT_ID = "cId";
  static final String COLUMN_AMT = "amt";
  static final String COLUMN_BALANCE = "balance";
  static final String COLUMN_TIMESTAMP = "time";


  //category
  static final String TABLE_CAT_NAME = "category";
  static final String COLUMN_CAT_ID = "cId";
  static final String COLUMN_CAT_TITLE = "cTitle";
  static final String COLUMN_CAT_IMG_PATH = "cPath";

  Database? myDB;

  Future<Database> getDB() async {
    if (myDB != null) {
      return myDB!;
    } else {
      myDB = await initDB();
      return myDB!;
    }
  }

  Future<Database> initDB() async {
    var mDirectory = await getApplicationDocumentsDirectory();

    var dbPath = join(mDirectory.path, "expensoDB");

    return openDatabase(dbPath, version: 1, onCreate: (db, _) {
      //create your tables here..

      db.execute(
          "Create Table $TABLE_NAME ($COLUMN_ID integer primary key autoincrement, $COLUMN_TITLE text not null, $COLUMN_DESC text not null, $COLUMN_TYPE integer, $COLUMN_EXPENSE_CAT_ID integer, $COLUMN_AMT num, $COLUMN_BALANCE num, $COLUMN_TIMESTAMP text)");

      db.execute(
          "Create Table $TABLE_CAT_NAME ($COLUMN_CAT_ID integer primary key autoincrement, $COLUMN_CAT_TITLE text not null, $COLUMN_CAT_IMG_PATH text not null)");

      db.insert(TABLE_CAT_NAME, {
        COLUMN_CAT_TITLE : "Coffee",
        COLUMN_CAT_IMG_PATH : "https://icons.iconarchive.com/icons/iconarchive/fat-sugar-food/256/Drink-Coffee-icon.png",
      });


    });
  }


  Future<bool> addExpense(ExpenseModel newExpense) async{

    var db = await getDB();

    var rowsEffected = await db.insert(TABLE_NAME, newExpense.toMap());

    return rowsEffected>0;
  }

  Future<List<ExpenseModel>> getAllExpenses() async{
    var db = await getDB();

    var data = await db.query(TABLE_NAME);

    List<ExpenseModel> arrExpenses = [];

    for(Map<String, dynamic> eachMap in data){
      arrExpenses.add(ExpenseModel.fromMap(eachMap));

    }

    return arrExpenses;
  }




}