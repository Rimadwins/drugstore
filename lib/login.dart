

import 'package:drug_store/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/farmacy.png",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Positioned(
              top: 60,
              child: Text(
                "Siap Melayani Anda",
                style: GoogleFonts.montserrat(color: Colors.black,fontSize: 30),
              )),
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: Card(
              color: Colors.black.withOpacity(0.3),
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                "Apotek Sehat Sejahtera",
                style: GoogleFonts.montserrat(
                  fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17,right: 17,bottom: 9),
                  child: Text("Silahkan Masuk!",
                   textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.white,
                    )
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 17,bottom: 34),
                  child: Card(
                      child: (
                     ElevatedButton(
                          child: Text("Klik Disini",
                             style: GoogleFonts.montserrat(fontSize: 18)
                             ),
                          onPressed:() {
                            Route pindah = 
                            MaterialPageRoute(builder: (context)=>HomePage());
                            Navigator.push(context, pindah);
                          })      
                      ),
                    
                  ),
                )
              ]),
            ),)
          ],
        ),
      ),
    );
  }
}