import 'package:appingles/Bicho.dart';
import 'package:appingles/Numeros.dart';
import 'package:appingles/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
        length: 3,
        vsync: this,
        initialIndex: 0
    );

  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda inglês"),
        backgroundColor: Colors.brown,
        bottom: TabBar(
          indicatorWeight: 4,
          //indicatorColor: Colors.white,
          controller: _tabController,
          labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
          tabs: <Widget>[
            Tab(text: "Bicho",),
            Tab(text: "Números",),
            Tab(text: "Vogais",)
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Bicho(),
          Numeros(),
          Vogais()
        ],
      ),
    );
  }
}
