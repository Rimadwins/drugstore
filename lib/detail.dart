import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Tumpukan dan Container Nama Obat
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height * 0.3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/amoxilin.jpg"))),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Container(
                      child: 
                     IconButton(onPressed:() {
                            Navigator.pop(context);
                          }, icon:const Icon(Icons.arrow_back_sharp)),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20))))),
                      Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      child: Icon(
                        Icons.assistant_direction,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20))))),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text("Amoxicilin",
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                        ),
                    ),
                    height: height * .07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))
                    ),
                  )
                ],
              ),
             //Row Rating dan keranjang
             
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("4.8 (32 review)",
                             style: GoogleFonts.montserrat(fontSize: 12))
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.shopping_basket,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Klik Beli Disini",
                             style: GoogleFonts.montserrat(fontSize: 12))
                      ],
                    ),
                  ],
                ),
              ),
              //Card Promo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.amber[100],
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Ada Promo untuk kamu nih!",
                            style: GoogleFonts.montserrat(fontSize: 12),),
                            Text("Dapatkan Diskon 100 ribu",
                            style: GoogleFonts.montserrat(fontSize: 11),),
                          ],
                        ),
                        ElevatedButton(onPressed: (){}, child: Text("Tukar"))
                      ],
                    ),
                  ),
                ),
              ),
              //Dosis
              TitleDetail(
                title: "Dosis",
                detail: "Dewasa:\n 250–500 mg, tiap 8 jam atau 500–1.000 mg, tiap 12 jam. Untuk infeksi berat dosisnya adalah 750–1.000 mg, tiap 8 jam." ),
                //Deskripsi
              TitleDetail(
                title: "Deskripsi",
                detail: "Amoxicillin adalah obat antibiotik untuk mengatasi penyakit akibat infeksi bakteri, seperti otitis media, gonore, atau pielonefritis. Obat ini juga sering digunakan bersama obat proton pump inhibitors (PPIs) untuk menangani tukak lambung yang disebabkan bakteri H. pylori.Amoxicillin bekerja dengan cara menghambat protein pembentuk dinding sel bakteri, sehingga dinding sel tidak terbentuk, pertumbuhan bakteri terhenti, dan akhirnya mati. Amoxicilin tidak digunakan untuk mengatasi infeksi virus, termasuk flu atau Covid-19.",
               ),
               //Title Ulasan/comment
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
            "Ulasan",
          style: GoogleFonts.montserrat(
            fontSize: 12,fontWeight: FontWeight.bold),
            ),
              ), 
              //Widget Ulasan//comment
            Comment(
              imagePath: "assets/round.jpg",
              nama: "Rima Dwi",
            
              comment:  "Senang sekali dengan ada nya aplikasi ini sangat membantu saya yg sangat sibuk bekerja,pelayanan nya pun cepat dan respon juga sangat baik,Trimakasih."),
            Comment(
              imagePath: "assets/round3.jpg",
              nama: "Revano",
             
              comment:  "Mudah,cepat dan banyak diskon ,yang pasti penjelasan pemakaian obat sangat jelas dan mudah dipahami."),
            Comment(
              imagePath: "assets/round1.jpeg",
              nama: "Ali Faaz",
             
              comment:  "All Nice,hanya terdapat kendala sedikit pada pengantaran tapi itu hanya misscommunication aja sama kuri,selain itu mantap semua."),
            Comment(
              imagePath: "assets/round2.jpg",
              nama: "Nikyta",
              
              comment:  "Terimakasi banyak,pelayanan cukup memuaskan ,semoga tambah sukses dan makin maju")
            ],)),
      ),
    );
  }
}

class Comment extends StatelessWidget {
  final String imagePath;
  final String nama;

  final String comment;
  const Comment({
    Key? key,
    required this.imagePath,
    required this.nama,
  
    required this.comment}) 
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(children: [
          Image.asset(imagePath,
          width: 40),
          SizedBox(width: 10
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nama),
              Row(
                children: [
                   Icon(Icons.star,color: Colors.amber),
                   Icon(Icons.star,color: Colors.amber),
                   Icon(Icons.star,color: Colors.amber),
                   Icon(Icons.star,color: Colors.amber)
                 
                ],
              )
            ],
          )
          ],),
          SizedBox(height: 10,),
          Text(comment,
            style: GoogleFonts.montserrat(
            fontSize: 12),
          )
        ],
      ),
    );
  }
}

class TitleDetail extends StatelessWidget {
  final String title;
  final String detail;
  const TitleDetail({
    Key? key,
    required this.title,
    required this.detail})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          title,
        style: GoogleFonts.montserrat(
          fontSize: 12,fontWeight: FontWeight.bold),
          ),
        SizedBox(
          height: 10,
        ),
        Text(
          detail,
        style: GoogleFonts.montserrat(
          fontSize: 12))],
      ),
    );
  }
}