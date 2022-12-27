import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DashPage extends StatefulWidget {
  const DashPage({Key? key}) : super(key: key);

  @override
  State<DashPage> createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // dashhh
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.download_rounded, color: Colors.greenAccent),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text(
                          "Pemasukan", 
                          style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 13
                          ),
                        ),
                        SizedBox(height: 8), 
                        Text("Rp. 2.750.000",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 15)
                        )],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.upload_rounded, color: Colors.red),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text(
                          "Pengeluaran", 
                          style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 13
                          ),
                        ),
                        SizedBox(height: 8), 
                        Text("Rp. 750.000",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 15)
                        )],
                      )
                    ],
                  )
                ],),
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
            ),

            // transaksiii
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Transaksi", style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold)),
            )

            // list trans

          ],
        )
        ),
    );
  }
}