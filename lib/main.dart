import 'package:flutter/material.dart';

void main() {
  runApp(Shopping());
}

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    List myDatalist = [
      {
        "name": "Regular fit slogan",
        "dp":
            "https://i.pinimg.com/564x/cc/7a/4e/cc7a4ebcb7e69e625f064e0ab0471abc.jpg",
        "bg": "PKR 1,190"
      },
      {
        "name": "Regular fit polo",
        "dp":
            "https://i.pinimg.com/564x/2d/ea/a8/2deaa8eea75a5a408260f080d6958373.jpg",
        "bg": "PKR 1,100-52%"
      },
      {
        "name": "Regular fit color block",
        "dp":
            "https://i.pinimg.com/564x/1f/67/cf/1f67cfed3d21f71d688a5c5541a009a2.jpg",
        "bg": "PKR 1,690"
      },
      {
        "name": "Regular fit v-neck",
        "dp":
            "https://i.pinimg.com/564x/80/24/cc/8024cc1764428f8f01cfa1643523e464.jpg",
        "bg": "PKR 1,290"
      },
      {
        "name": "Regular fit v-neck",
        "dp":
            "https://i.pinimg.com/564x/56/17/8a/56178aff0cc119ccadc0a93007ac6e88.jpg",
        "bg": "PKR 1,290"
      },
      {
        "name": "Regular fit v-neck",
        "dp":
            "https://i.pinimg.com/564x/28/8c/68/288c68e14a9c7d02baead7edb48e16bc.jpg",
        "bg": "PKR 1,290"
      }
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Discover",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Stack(
              children: [
                Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.black,
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 9),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade300,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Search anything",
                            style: TextStyle(color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black),
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                    "All",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300),
                    child: Text(
                      "Men",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300),
                    child: Text(
                      "Women",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300),
                    child: Text(
                      "Kids",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .5 / 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (context, index) => Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(myDatalist[index]["dp"]))),
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey.shade200),
                                      child:
                                          Icon(Icons.favorite_border_outlined))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        ListTile(
                          title: Text(
                            myDatalist[index]["name"],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          subtitle: Text(
                            myDatalist[index]["bg"],
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ),
                      ]),
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
