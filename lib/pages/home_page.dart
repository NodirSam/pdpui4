import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id="home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Cars", style: TextStyle(fontSize: 25, color: Colors. red),),
        actions: [
          IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.red,), onPressed: () {  },

          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.red,), onPressed: () {  },

          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              //#categories
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Red"),
                    singleTab(false, "Blue"),
                    singleTab(false, "Green"),
                    singleTab(false, "Yellow"),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              //#makeItem
              makeitem("assets/images/images1.jpg"),
              makeitem("assets/images/images2.jpg"),
              makeitem("assets/images/images3.jpg"),
              makeitem("assets/images/images4.png"),
              makeitem("assets/images/images5.jpg"),

            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(text, style: TextStyle(fontSize: type? 20 : 15),),
        ),
      ),
    );
  }

  Widget makeitem(String images){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage(images),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            blurRadius: 10,
            offset: Offset(0, 10),
          )
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("PDP Car", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        Text("Electric", style: TextStyle(color: Colors.red, fontSize: 25),),
                      ],
                    )
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              child: Text("100\$", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 100,),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(
                child: Icon(Icons.favorite_border, size: 20,),
              ),
            )
          ],
        ),
      ),
    );
  }


}
