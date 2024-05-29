import 'package:flutter/material.dart';
import '../model/poli.dart'; 
import 'poli_detail.dart'; 

class Pegawai extends StatefulWidget {
  const Pegawai({super.key});

   @override 
   State<Pegawai> createState() => _PoliPageState();
}

class _PoliPageState extends State<Pegawai> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pegawai")),
      body: ListView( 
        children: [
          GestureDetector(

            child: Card( 
              child: ListTile( 
                title: const Text("Id Pegawai"), 
              ),
            ),
          onTap: () { 
            Poli poliAnak = new Poli(namaPegawai: "Pegawai");
            Navigator.push( 
              context,
              MaterialPageRoute( 
                builder: (context) => PoliDetail(poli: poliAnak))); 

          },
          ),
          Card(
            child: ListTile(
              title: const Text("Nama : "),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Tanggal_lahir :"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("nomor_telepon : "),
            ),
            
          ),
        ],
      ),
    );
  }
}
