import 'package:flutter/material.dart';
import 'navigation_bar.dart';
// import thêm

class Sidebar extends StatefulWidget{
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(

        ),
        appBar: AppBar(
          // title: , (nhập tên chức năng)
          backgroundColor: Colors.green,

          // body


        ),
      ),
    );
  }
}