import 'package:flutter/material.dart';
import './detailproduk.dart';

class ProdukList extends StatefulWidget {
  @override
  _ProdukListState createState() => _ProdukListState();
}

class _ProdukListState extends State<ProdukList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST PRODUK")
      ),

      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[

          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Jam Tangan Pria",
                  description: "Ini adalah Jam tangan Pria",
                  price: 1000000,
                  image: "jam.jpg",
                  star: 5,
                ),
              ));
            },

            child: ProductBox(
              name: "Jam Tangan Pria",
              description: "Ini adalah Jam tangan Pria",
              price: 1000000,
              image: "jam.jpg",
              star: 5,
            ),
          ),
          
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Jam Tangan G-SHOCK",
                  description: "Ini adalah Jam tangan G-SHOCK",
                  price: 1450000,
                  image: "g-shock.jpeg",
                  star: 5,
                ),
              ));
            },

            child: ProductBox(
              name: "Jam Tangan G-SHOCK",
              description: "Ini adalah Jam tangan G-SHOCK",
              price: 1450000,
              image: "g-shock.jpeg",
              star: 5,
            ),
          ),
          
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Jam Tangan SKMEI",
                  description: "Ini adalah Jam tangan SKMEI",
                  price: 1550000,
                  image: "JamSKMEI.jpeg",
                  star: 5,
                ),
              ));
            },

            child: ProductBox(
              name: "Jam Tangan SKMEI",
              description: "Ini adalah Jam tangan SKMEI",
              price: 1550000,
              image: "JamSKMEI.jpeg",
              star: 5,
            ),
          ),
          
            new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Jam Tangan Rado Oryginal",
                  description: "Ini adalah Jam tangan Rado Oryginal",
                  price: 1600000,
                  image: "radooriginal.jpeg",
                  star: 5,
                ),
              ));
            },

            child: ProductBox(
              name: "Jam Tangan Rado Oryginal",
              description: "Ini adalah Jam tangan Rado Oryginal",
              price: 1600000,
              image: "radooriginal.jpeg",
              star: 5,
            ),
          ),
          
            new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Jam Tangan Swiss Army",
                  description: "Ini adalah Jam tangan Swiss Army",
                  price: 1650000,
                  image: "swissarmy.jpeg",
                  star: 5,
                ),
              ));
            },

            child: ProductBox(
              name: "Jam Tangan Swiss Army",
              description: "Ini adalah Jam tangan Swiss Army",
              price: 1650000,
              image: "swissarmy.jpeg",
              star: 5,
            ),
          ),
          
          
        ],
      )
    );
  }
}

class ProductBox extends  StatelessWidget{
  ProductBox({Key key, this.name, this.description, this.price, this.image, this.star}): super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final int star;

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimages/" + image, width: 50,),

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
                    Text(this.description),
                    Text(
                      "Price: " + this.price.toString(),
                      style: TextStyle(color: Colors.red),
                    ),

                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.star, size: 10, color: Colors.deepOrange),
                            Icon(Icons.star, size: 10, color: Colors.deepOrange),
                            Icon(Icons.star, size: 10, color: Colors.deepOrange),
                            Icon(Icons.star, size: 10, color: Colors.orange),
                          ],
                        )
                      ],
                    )
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