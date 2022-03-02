import 'package:flutter/material.dart';

class xo_pg extends StatelessWidget {
  const xo_pg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
          Stack(
            children: [
              Image.network("enter bg image link/url"),
              Padding(padding: EdgeInsets.all(15),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5),
                    child:GridView(gridDelegate://to be done,


                        //add buttons here

                    ],),)
                  ],
                    //add catch pokemon button or encounter or reward button here ( the button to be clicked after the game is over
                  ),
                ),
              ),)

            ],
          )
      ),
    );
  }
}
