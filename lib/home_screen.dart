import 'package:flutter/material.dart';
import 'package:menu/image_item.dart';
import 'package:menu/item.dart';
import 'member_list.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
final scaffoldKey = GlobalKey<ScaffoldState>();
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Expansion Menu in Flutter"),
      ),
      drawer: Drawer(
        child: SafeArea(
            child:Column(
              children: [
                SizedBox(height: 80,),
                ExpansionTile(
                  title: Text("Parent Category 1"),
                  leading: Icon(Icons.person), //add icon
                  childrenPadding: EdgeInsets.only(left:60), //children padding
                  children: [
                    ListTile(
                      title: Text("Child Category 1"),
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>(ImageItem())));
                      },),
                    ListTile(
                      title: Text("Child Category 2"),
                      onTap: (){//action on press
                      },),],),
                ExpansionTile(
                  title: Text("Parent Category 2"),
                  leading: Icon(Icons.person), //add icon
                  childrenPadding: EdgeInsets.only(left:60), //children padding
                  children: [
                    ListTile(
                      title: Text("Child Category 1"),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:(context)=>const MemberListScreen())
                        ); //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Child Category 2"),
                      onTap: (){
                      },),],),
              ],)),),
    );
  }
}