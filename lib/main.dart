import 'package:flutter/material.dart';
import 'Bills_page.dart';
import 'Products_detail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => Chairscompany(),
      "Products_detail": (context) => Productdetail(),
      "Bills_page": (context) => Billpage(),
    },
  ));
}

class Chairscompany extends StatefulWidget {
  const Chairscompany({super.key});

  @override
  State<Chairscompany> createState() => _ChairscompanyState();
}

class _ChairscompanyState extends State<Chairscompany> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Icon(
                      Icons.menu_rounded,
                      size: 40,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 55,
                    margin: EdgeInsets.only(top: 1, left: 20),
                    child: Icon(
                      Icons.account_circle,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 35, left: 20),
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xffFFFFFF)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.search_rounded,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 160),
                        child: Text("Search",
                            style: TextStyle(
                                color: Color(0xffADAEAF), fontSize: 25)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35, right: 20),
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "Bills_page");
                    },
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: Text("Explore",
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text("Comfortable Chairs",
                      style:
                      TextStyle(fontSize: 23, fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 20),
                  child:Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width:2),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Color(0xff0D740A),
                            spreadRadius: 1,

                          )
                        ]
                    ),
                    child: Icon(
                      Icons.favorite_sharp,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: chairlist.map((e) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "Products_detail",
                            arguments: e);
                      },
                      child: Chairs2(
                        img: e["img"],
                        name: e["name"],
                        price: e["price"],
                        nam: e["nam"],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: chairlist1.map((e) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "Products_detail",
                            arguments: e);
                      },
                      child: Chairs2(
                        img: e["img"],
                        name: e["name"],
                        price: e["price"],
                        nam: e["nam"],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210 ,top: 25),
              child: Text("Best Selling",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                width: 360,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(left: BorderSide(width: 30,color:Colors.black26),right: BorderSide(width: 30,color:Colors.black26))
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.black,
                        child: Image.network('https://www.primeabgb.com/wp-content/uploads/2023/10/Ant-Esports-Infinity-Plus-2D-Blue-Black-Gaming-Chair-Adjustable-Armrest-Headrest-and-Lumbar-Support.jpg',fit: BoxFit.cover,),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "\t\t\tGaming Chair",
                                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: " \n\t\t\t\tGame Comfortable",
                                  style: TextStyle(
                                      color: Color(0xffADAEAF),
                                      fontSize: 15)),
                              TextSpan(
                                  text: " \n\n\t\t\t\t\$\500.5",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 18)),
                            ] ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                width: 360,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(left: BorderSide(width: 30,color:Colors.black26),right: BorderSide(width: 30,color:Colors.black26))
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.black,
                        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNo_-PUyXNQw5ca2rZAv3BmsPFAVFtFSz12w&usqp=CAU',fit: BoxFit.cover,),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "\t\t\Rest Chair",
                                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: " \n\t\t\t\tBack&Neck Rest",
                                  style: TextStyle(
                                      color: Color(0xffADAEAF),
                                      fontSize: 15)),
                              TextSpan(
                                  text: " \n\n\t\t\t\t\$\115.5",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 18)),
                            ] ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                width: 360,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(left: BorderSide(width: 30,color:Colors.black26),right: BorderSide(width: 30,color:Colors.black26))
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.black,
                        child: Image.network('https://img.freepik.com/free-psd/armchair-pillow_176382-863.jpg',fit: BoxFit.cover,),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "\t\t\Arm Chair",
                                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: " \n\t\t\t\tWith Pillow",
                                  style: TextStyle(
                                      color: Color(0xffADAEAF),
                                      fontSize: 15)),
                              TextSpan(
                                  text: " \n\n\t\t\t\t\$\215.5",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 18)),
                            ] ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                width: 360,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(left: BorderSide(width: 30,color:Colors.black26),right: BorderSide(width: 30,color:Colors.black26))
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.black,
                        child: Image.network('https://images-cdn.ubuy.co.in/645bc80cb353287b0b45a825-fly-yuting-gaming-chair-ergonomic.jpg',fit: BoxFit.cover,),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "\t\t\Video Chair",
                                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: " \n\t\t\t\tGame Master",
                                  style: TextStyle(
                                      color: Color(0xffADAEAF),
                                      fontSize: 15)),
                              TextSpan(
                                  text: " \n\n\t\t\t\t\$\800.5",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 18)),
                            ] ),
                          ),
                        ),
                      ],
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

class Chairs2 extends StatelessWidget {
  String? name;
  String? nam;
  String? img;
  double? price;

  Chairs2({Key? key, this.name, this.nam, this.img, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 5),
          child: Container(
              height: 280,
              width: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffFFFFFF)),
              child: Column(children: [
                Image.network(
                  img ?? "",
                  height: 180,
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                    name ?? "",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Text(nam ?? "",
                      style: TextStyle(fontSize: 15, color: Color(0xffADAEAF))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        "\$$price",
                        style: TextStyle(
                            color: Color(0xffA7A5A6),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ])),
        ),
      ],
    );
  }
}

List<Map> chairlist = [
  {
    "name": "Minimal Chair",
    "nam": "For House Use.",
    "img":
    "https://images-cdn.ubuy.co.in/635ee3628a9cb36c5544ed83-make-your-room-or-office-a.jpg",
    "price": 250.00,
    "qty": 1
  },
  {
    "name": "Rest Chair",
    "nam": "Back&Neck Rest.",
    "img":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNo_-PUyXNQw5ca2rZAv3BmsPFAVFtFSz12w&usqp=CAU",
    "price": 115.50,
    "qty": 1
  },
  {
    "name": "Office Chair",
    "nam": "Company Chair",
    "img":
    "https://images-cdn.ubuy.co.in/633b01dfc93453769f15744f-office-chair-computer-high-back.jpg",
    "price": 150.50,
    "qty": 1
  },
  {
    "name": "Gaming Chair",
    "nam": "Game Comfortable",
    "img":
    "https://www.primeabgb.com/wp-content/uploads/2023/10/Ant-Esports-Infinity-Plus-2D-Blue-Black-Gaming-Chair-Adjustable-Armrest-Headrest-and-Lumbar-Support.jpg",
    "price": 500.50,
    "qty": 1
  }
];
List<Map> chairlist1 = [
  {
    "name": "Royalty Chair",
    "nam": "Royal Seat",
    "img":
    "https://media.istockphoto.com/id/1298089431/vector/white-armchair-with-wooden-legs-realistic-vector-armchair-in-the-loft-style-separate-on-a.jpg?s=612x612&w=0&k=20&c=kOR2f0Ft_j96a-FBGaVDgYLRcmepDnacLsUR6jOh2yk=",
    "price": 350.00,
    "qty": 1
  },
  {
    "name": "Arm Chair",
    "nam": "With Pillow",
    "img":
    "https://img.freepik.com/free-psd/armchair-pillow_176382-863.jpg",
    "price": 215.50,
    "qty": 1
  },
  {
    "name": "Wooden Chair",
    "nam": "Pure Wooden",
    "img":
    "https://5.imimg.com/data5/SELLER/Default/2021/12/GY/XB/JK/2622990/white-metal-majestic-king-throne-chair.jpg",
    "price": 190.50,
    "qty": 1
  },
  {
    "name": "Video Chair",
    "nam": "Game Master",
    "img":
    "https://images-cdn.ubuy.co.in/645bc80cb353287b0b45a825-fly-yuting-gaming-chair-ergonomic.jpg",
    "price": 800.50,
    "qty": 1
  }
];


List<Map> multichairs = [];
