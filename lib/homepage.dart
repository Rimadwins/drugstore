import 'package:drug_store/detail.dart';
import 'package:drug_store/widget/category.dart';
import 'package:drug_store/widget/obat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark),label:"Tersimpan"),  
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profil"),      
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Stack(children: [
              Container(height: 140,width: double.infinity, color: Colors.green),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Container(
                          alignment: Alignment.topLeft, 
                          height: 45, 
                          width: 45,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                  image: AssetImage("assets/round.jpg")),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2))), 
                              SizedBox(
                                width: 10,
                                ),
                                Text(
                                  "Halo Rima,Selamat Datang !",
                                  style: GoogleFonts.montserrat(color: Colors.white),
                                )
                      ],),
                      Container(
                        alignment: Alignment.topRight, 
                        child: 
                         ElevatedButton(
                          child: 
                          Text("Log Out",
                             style: GoogleFonts.montserrat(fontSize: 12)
                             ),
                          onPressed:() {
                            Navigator.pop(context);
                          }),
                        ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F7),
                        borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false, 
                          decoration: InputDecoration(
                            hintText: "Cari Obat Yang Kamu Perlukan?",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(30)
                            ))),
                        ),
                  ),
                             ],)
            ],),
             Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                      Category(imagePath: "assets/obat.png", title:"Antibiotic"),
                      Category(imagePath: "assets/obat1.png", title:"Pereda Nyeri"),
                      Category(imagePath: "assets/obat2.png", title:"Herbal"),
                      Category(imagePath: "assets/obat3.png", title:"Vitamin"),
                      
                    ],),  
                  ),Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Obat Pilihan 💊 ",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),),
                  ),
             Obat(
              imagePath: "assets/amoxilin.jpg",
              nameObat: "Amoxicilin" ,
              rating: "4.8",
              keranjang: "Klik Beli",
              ),
              ElevatedButton(
                onPressed: (){
                            Route pindah =
                            MaterialPageRoute(builder: (context)=>DetailPage());
                            Navigator.push(context, pindah);
                           }, 
                           child: 
                           Text("Detail",
                           style:  GoogleFonts.montserrat(fontSize: 10),)),
            Obat(
              imagePath: "assets/pct.jpg",
              nameObat: "Paracetamol" ,
              rating: "4.6",
              keranjang: "Klik Beli"
              ),
               ElevatedButton(
                onPressed: (){
                            Route pindah =
                            MaterialPageRoute(builder: (context)=>DetailPage());
                            Navigator.push(context, pindah);
                           }, 
                           child: 
                           Text("Detail",
                           style:  GoogleFonts.montserrat(fontSize: 10),)),
              Obat(
              imagePath: "assets/vitamin.jpg",
              nameObat: "Vitamin" ,
              rating: "4.3",
              keranjang: "Klik Beli"
              ),
               ElevatedButton(
                onPressed: (){
                            Route pindah =
                            MaterialPageRoute(builder: (context)=>DetailPage());
                            Navigator.push(context, pindah);
                           }, 
                           child: 
                           Text("Detail",
                           style:  GoogleFonts.montserrat(fontSize: 10),)),
          ],
        )),
      ),
    );
  }
}


