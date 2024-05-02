// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_navigasyon_islemleri/calismalarimiz.dart';
import 'package:flutter_navigasyon_islemleri/galeri.dart';
import 'package:flutter_navigasyon_islemleri/hakkimizda.dart';
import 'package:flutter_navigasyon_islemleri/iletisim.dart';

class Anasayfa extends StatelessWidget {
  Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple.shade200,
        title: Text("akkayasoft Yazılım Platformu"),
      ),
      body: Center(
        child: Column(
          children: [
            myCard(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Hakkimizda()));
              },
              cardRenk: Colors.pink,
              sayfaIsim: 'Hakkımızda',
            ),
            myCard(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Galeri()));
              },
              cardRenk: Colors.yellow,
              sayfaIsim: 'Galeri',
            ),
            myCard(
               onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Calismalarimiz()));
              },
              cardRenk: Colors.blue,
              sayfaIsim: 'Çalışmalarımız',
            ),
            myCard(
               onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Iletisim()));
              },
              cardRenk: Colors.teal,
              sayfaIsim: 'İletişim',
            ),
          ],
        ),
      ),
    );
  }
}

class myCard extends StatelessWidget {
  final Color cardRenk;
  final String sayfaIsim;
  final VoidCallback onTap;
  const myCard({
    Key? key,
    required this.cardRenk,
    required this.sayfaIsim,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.red,
      color: cardRenk,
      child: ListTile(
        onTap: onTap,
        leading: Icon(Icons.adobe_rounded),
        title: Text(sayfaIsim),
      ),
    );
  }
}
