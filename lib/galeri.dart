import 'package:flutter/material.dart';

class Galeri extends StatelessWidget {
  const Galeri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.network('https://picsum.photos/200/300'),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Image.network('https://picsum.photos/seed/picsum/200/300'),
                ),
              ],
            ),
            
            SizedBox(height: 100,),
            
            ElevatedButton(
              onPressed: (){
              Navigator.of(context).pop();
            }, 
            child: Text('Anasayfaya Dön'))
          ],
        ),
      ),
    );
  }
}