import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void main() {
  runApp(
    //Semua yang diakhiri tanda : adalah atribut, seperti home: adalah atribut dari MaterialApp
    MaterialApp(
      //Widget yang membungkus sejumlah widget yang mengimplementasikan Material Design seperti Scaffold
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        //Route yang ditampilkan pertama saat aplikasi dijalankan
        //appBar: AppBar(
        //  title: Text('My First App'),
        //  centerTitle: true,
        //  backgroundColor:
        //      Colors.green[500], //Warna bisa diberi gradient dari 50-900
        //),
        body: SafeArea(
          //Widget child di dalam SafeArea tidak akan muncul di system status bar (menambahkan padding)
          child: Container(
            //Widget parent yang dapat mengkonfigurasi property widget child (hanya boleh satu child). Ukuran dan bentuk menyesuaikan widget child
            decoration: BoxDecoration(
              //Atribut yang mengubah bentuk container
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(
                10.0), //Menambahkan padding pada Container agar widget di dalamnya ada space sebanyak 10 pixels
            margin: EdgeInsets.only(
                left:
                    30), //Menambahkan margin kiri pada Container sebanyak 30 pixels
            width: 200,
            height: 70,
            //color: Colors.grey, //Jika atribut decoration diberi warna, container jangan diberi warna lagi (error)
            transform: Matrix4.rotationZ(0.1), //menerapkan rotasi ke Container
            child: Text('Welcome to Android ATC'),
          ),
        ),
      ),
    ),
  );
}
