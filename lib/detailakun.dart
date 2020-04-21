import 'package:flutter/material.dart';

class DetailAkun extends StatefulWidget{
  DetailAkun({Key key, this.name}): super(key: key);

  final String name;
  @override

  _DetailAkunState createState() => _DetailAkunState();
}

class _DetailAkunState extends State<DetailAkun>{
  @override

  Widget build(BuildContext context){

    return Scaffold(
      appBar: new AppBar(
        title: new Text("${widget.name}"),
      ),

      body: new Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
              ],
            ),
            Container(
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                ),
              ),

              padding: EdgeInsets.all(10),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                  ),

                  new Container(
                    child: new Text(
                      this.widget.name.toString(),
                      style: new TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "NeoSansBold"
                      ),
                    ),
                  )
                ]
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightBlue,
              width: double.infinity,
              height: double.maxFinite,
              child: new Text(widget.name),
            )
          ],
        )
      )
    );
  }
}