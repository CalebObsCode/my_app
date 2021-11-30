import 'package:flutter/material.dart';
import 'package:my_app/home_screen.dart';


class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Nav> {
  int _index = 0;

  List<Widget> _allWidget = <Widget>[
    Home(
      const Text('Crypto Dashboard')
    ),
    const Text('Messages'),
    const Text('Profile'),
  ];

  // Ontap function
  void _ontap(int Index) {
    setState(() {
      _index = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CryptoH'),
      ),
      body: Center(
        child: _allWidget.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message), 
              title: Text('Messages')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home), 
                title: Text('Profile')),
        ],
        currentIndex: _index,
        onTap: _ontap,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
    );
  }
}
