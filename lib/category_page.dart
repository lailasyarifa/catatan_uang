import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isExpense = true;

  void openDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Center(
            child: Column(
              children: [
                Text(
                  (isExpense) ? "Tambahkan Pengeluaran" : "Tambahkan Pemasukan", 
                style: GoogleFonts.montserrat(fontSize: 18, color: (isExpense) ? Colors.red : Colors.green),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Nama"
                  ),
                ),
                ElevatedButton(onPressed: () {}, 
                child: Text("Save"))
              ],
            ),
          ),
        ));
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Switch(
                  value: isExpense, 
                  onChanged: (bool value) {
                    setState(() {
                      isExpense = value;
                    });
                  },
                  inactiveTrackColor: Colors.green[200],
                  inactiveThumbColor: Colors.green,
                  activeColor: Colors.red,
              ),
              IconButton(
                onPressed: () {
                  openDialog();
                }, 
                icon: Icon(Icons.add_box_outlined))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: (isExpense) ? Icon(Icons.upload_sharp, color: Colors.red) : Icon(Icons.download_sharp, color: Colors.green),
                title: Text(
                  "Jajan",
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever)),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.mode_edit))
                    ],
                  ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: (isExpense) ? Icon(Icons.upload_sharp, color: Colors.red) : Icon(Icons.download_sharp, color: Colors.green),
                title: Text(
                  "Jajan",
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever)),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.mode_edit))
                    ],
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}