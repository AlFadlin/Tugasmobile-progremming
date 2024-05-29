import 'package:flutter/material.dart';
import '../model/poli.dart'; 
import 'poli_detail.dart'; 
import 'poli_item.dart'; 
import 'poli_form.dart';

class PoliPasien extends StatefulWidget {
  const PoliPasien({super.key});

   @override 
   State<PoliPasien> createState() => _PoliPasienState();
}

class _PoliPasienState extends State<PoliPasien> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pasien"),
      actions: [ 
        GestureDetector( 
          child: const Icon(Icons.add), 
          onTap: () { 
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => PoliForm())); 
          },
        )
      ],
    ),
   body: ListView ( 
        children: [
          PoliItem(poli: Poli(dataPasien: "id :")),
          PoliItem(poli: Poli(dataPasien: "Nomor_rm :")),
          PoliItem(poli: Poli(dataPasien: "nama:")),
          PoliItem(poli: Poli(dataPasien: "tanggal_lahir:")),
          PoliItem(poli: Poli(dataPasien: "nomor_tlpon:")),
          PoliItem(poli: Poli(dataPasien: "alamat:")),
        ],
      ),
    );
  }
}
