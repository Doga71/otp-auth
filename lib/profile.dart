import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'addRes.dart';

class Profile extends StatefulWidget {
  
   String phoneNo;

  Profile({this.phoneNo});


  @override
  _ProfileState createState() => _ProfileState(phoneNo);
}

class _ProfileState extends State<Profile> {

  int _selectedIndex = 0;
  List<Widget> _widgetOption = <Widget>[
    Text('home'),
    Text('profile'),
  ];

  String phoneNo;
  _ProfileState(this.phoneNo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),),
      body: Center(
        child: //_widgetOption.elementAt(_selectedIndex),
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Container(child: Icon(FontAwesomeIcons.user, size: 70,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(child: Text('+91$phoneNo', style: TextStyle(fontSize: 20),),),
                ),
              ],
            ),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedFontSize: 10,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
              title: Text('Profile'),
              icon: Icon(Icons.account_box),
            ),
          ],
          onTap: (int index){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AddRes()));
            setState(() {
              _selectedIndex = index;
            });
          }
      ),);
  }
}


