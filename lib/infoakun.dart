import 'package:flutter/material.dart';
import './detailakun.dart';

class InfoAkun extends StatefulWidget {
  @override
  _InfoAkunState createState() => _InfoAkunState();
}

class _InfoAkunState extends State<InfoAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info Akun")
      ),

      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[

          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailAkun(
                  name: "Privasi",
                ),
              ));
            },

            child: ProductBox(
              name: "Privasi",
            ),
          ),
          
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailAkun(
                  name: "Keamanan",
                ),
              ));
            },

            child: ProductBox(
              name: "Keamanan",
            ),
          ),
          
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailAkun(
                  name: "Verifikasi dua langkah",
                ),
              ));
            },

            child: ProductBox(
              name: "Verifikasi dua langkah",
            ),
          ),
          
            new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailAkun(
                  name: "Ganti akun",
                ),
              ));
            },

            child: ProductBox(
              name: "Ganti akun",
            ),
          ),
          
            new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailAkun(
                  name: "Hapus akun saya",
                ),
              ));
            },

            child: ProductBox(
              name: "Hapus akun saya",
            ),
          ),
          
          
        ],
      )
    );
  }
}

class ProductBox extends  StatelessWidget{
  ProductBox({Key key, this.name,}): super(key: key);

  final String name;


  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}