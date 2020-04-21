import 'package:flutter/material.dart';
import 'package:penjualanjamtangan/infoakun.dart';


class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("BERANDA"),
        ]),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Click search');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_active), 
            onPressed: () {
              print('Click start');
            },
          ),
        ],
      ),

      //DRAWER
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Andre Kusuma"), 
              accountEmail: new Text("andre@undiksha.ac.id"),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundImage: AssetImage('assets/appimages/DSC09606.JPG'),
                  // child: new Image.asset('assets/appimages/modi.JPG'),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/appimages/clock.jpeg'),
                  fit: BoxFit.cover
                ),
              ),
            ),

            new ListTile(
              title: new Text('Notifications'),
              trailing: new Icon(Icons.notifications_none),
            ),

            new ListTile(
              title: new Text('Wishlist'),
              trailing: new Icon(Icons.bookmark_border),
            ),

            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => InfoAkun(),
                ));
              },

              child: new ListTile(
                title: new Text('Akun'),
              trailing: new Icon(Icons.verified_user),
              )
            ),
            
            Divider(height: 2,),
            new ListTile(
              title: new Text('Setting'),
              trailing: new Icon(Icons.settings),
            ),
          ],
        )
      ),
      //END DRAWER

      body: new Column(
        children: <Widget>[
          Image.asset("assets/appimages/beranda.jpg"),
        
          Container(
            color: Colors.blueAccent[100],
            padding: const EdgeInsets.all(10),

            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Andre Store',
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20
                        ),
                      ),
                      Text(
                        'Singaraja-Buleleng.',
                        style: TextStyle(
                          color: Colors.black,
                        )
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                    color: Colors.red[500],
                ),
                Text("41"),
              ]
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Theme.of(context).dividerColor)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "CALL",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    )
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.near_me),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "ROUTE",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    )
                  ],
                ),
                
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.share),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "SHARE",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    )
                  ],
                ),
              ]
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Ini adalah toko jam AndreStore. disini menjual beberapa jam kualitas tinggi '
              'dengan harga yang murah. ',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}