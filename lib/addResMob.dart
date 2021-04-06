import 'package:flutter/material.dart';
import 'uploadResImage.dart';

class AddResMobile extends StatelessWidget {
  TextEditingController _addRes = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Phone Auth'),
        ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 60),
          child: Center(
            child: Text(
              'Resturant Phone Number',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40, right: 10, left: 10),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Phone Number',
              prefix: Padding(
                padding: EdgeInsets.all(4),
                child: Text('+91'),
              ),
            ),
            maxLength: 10,
            keyboardType: TextInputType.number,
            controller: _addRes,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          width: 200,
          child: FlatButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AddResImage() ));
            },
            child: Text(
              'Add Resturant',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
