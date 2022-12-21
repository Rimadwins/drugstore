import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Obat extends StatelessWidget {
  final String imagePath;
  final String nameObat;
  final String rating;
  final String keranjang;
  const Obat({
    Key? key,
    required this.imagePath,
    required this.nameObat,
    required this.rating,
    required this.keranjang
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: double.infinity, 
     height: 230,
     child: Stack(
       children: [
         Card(
           clipBehavior: Clip.antiAliasWithSaveLayer,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           elevation: 10,
           child: Column(
             children: [
               SizedBox(
                 width: double.infinity,
                 height: 160,
                 child: Image.asset(imagePath,
                 fit: BoxFit.cover)
               )
             ],
           ),
           ),
           Positioned(
             bottom: 0,
             left: 10,
             child: SizedBox(
               height: 50,
               child: Padding(
                 padding: const EdgeInsets.only(left: 5,right: 5),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [Text(
                     nameObat,
                     style: GoogleFonts.montserrat(
                       fontSize: 13, 
                       fontWeight: FontWeight.bold)),
                       SizedBox(
                         height: 2,
                       ),
                       Row(
                         children: [
                           Icon(Icons.star, color: Colors.amber, size: 14),
                           SizedBox(
                             width: 5,
                           ),
                           Text(rating,
                           style: GoogleFonts.montserrat(fontSize: 12)),
                           SizedBox(
                             width: 120,
                           ),
                           Icon(Icons.shopping_basket,color: Colors.grey,size: 14,),
                           SizedBox(
                             width: 5,
                           ),
                           Text(keranjang,
                           
                           style: GoogleFonts.montserrat(fontSize: 12)),
                           ],
                       )
                       ],
                 ),
               ),
             ),
           )
       ],
     ),);
  }
}
