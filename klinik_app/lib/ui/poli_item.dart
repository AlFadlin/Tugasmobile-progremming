import 'package:flutter/material.dart'; 
 import '../model/poli.dart'; 
 import 'poli_detail.dart'; 

 class PoliItem extends StatelessWidget {
   final Poli poli; 
  @override
   const PoliItem({super.key, required this.poli});


   Widget build(BuildContext context) {
    return GestureDetector( 
      child: Card( 
        child: ListTile(
          title: Text("${poli.dataPasien}"),
        ),
      ),
      onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));

      },
    );
   }
 }