import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:catatan_uang/dash_page.dart';
import 'package:catatan_uang/transaksi_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'category_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _children = [DashPage(), CategoryPage()];
  int currentIndex = 0;

  void onTapTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (currentIndex == 0) 
      ? CalendarAppBar(
        accent: Color(0xff91deef),
        backButton: false,
        locale: 'id',
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      )
      : PreferredSize(
        child: Container(
          child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
          child: Text('Kategori', 
          style: GoogleFonts.montserrat(fontSize: 20)),
        )), 
        preferredSize: Size.fromHeight(100)),

      floatingActionButton: Visibility(
        visible: (currentIndex == 0) ? true : false,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
          .push(MaterialPageRoute(
            builder: (context) => TransaksiPage(),
            ))
            .then((value) {
              setState(() {
                
              });
            });
        }, 
      backgroundColor: Color(0xff91deef), 
      child: Icon(Icons.add),
      ),
      ),
      body: _children[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          IconButton(
            onPressed: () {
              onTapTapped(0);
            }, 
            icon: Icon(Icons.home_filled)),
          SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {
              onTapTapped(1);
            }, 
            icon: Icon(Icons.dns_outlined))
        ],),
      ),
    );
  }
}