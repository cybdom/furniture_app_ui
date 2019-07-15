import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "Buy Now!",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff7f7f7),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.star_border,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey[500],
        unselectedItemColor: Colors.grey[400],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text("Basket"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Profile"),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: PageView(
                children: <Widget>[
                  Image.network(
                      "https://luxloungeefr.com/wp-content/uploads/2015/03/blue-custom.png"),
                  Image.network(
                      "https://luxloungeefr.com/wp-content/uploads/2015/03/blue-custom.png"),
                  Image.network(
                      "https://luxloungeefr.com/wp-content/uploads/2015/03/blue-custom.png"),
                ],
              ),
            ),
            SizedBox(
              height: 11.0,
            ),
            Flexible(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Yellow Chair",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 29,
                              ),
                            ),
                            SizedBox(
                              height: 11.0,
                            ),
                            Text(
                              "Dimensions: H 33 x W 19 x D 21: Seating Height: Height-17.9",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "All dimensions are in INCH",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 11.0,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("4.9   |   239 Reviews"),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    Divider(),
                    SizedBox(
                      height: 11.0,
                    ),
                    Container(
                      height: 31,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Specifications",
                              style: TextStyle(color: Colors.blue),
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(color: Colors.blue),
                            )),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Care"),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("FAQ's"),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Shipping"),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Terms"),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Warrenty"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    Text(
                      "Dimensions:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Dimensions: H 33 x W 19 x D 21: Seating Height: Height-17.9, All dimensions are in INCH",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    Text(
                      "Material:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "PolyPurulent Fabric, High Quality Wood, High Quality Leather",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
