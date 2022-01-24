import 'package:flutter/material.dart';
import 'logic_and_mons.dart';


int  pkm_count=0;
void main()
{
  runApp(HomePage_());
}

class HomePage_ extends StatelessWidget {
  const HomePage_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child:ListView(
        children: [
          ListTile(
            title: Text("Pokemon caught : $pkm_count"),
          ),
          ListTile(
            title: Text("Stater Pokemon : $pkm_count"),
          ),
          ListTile(
            title: Text("Pesudo Legendary POkemon :  $pkm_count"),
          ),
          ListTile(
            title: Text("Legendary Pokemon :  $pkm_count"),
          ),
          ListTile(
            title: Text("Shiny Pokemon :  $pkm_count"),
          ),
          ListTile(
            title: Text("More About the App "),
            onTap: () {},
          ),
          ListTile(
            title: Text(" ??????????????????? "),
            onTap: () {},

          ),
        ],
      ),),
      body:Stack(children:[

      ],
    ),);
  }
}

