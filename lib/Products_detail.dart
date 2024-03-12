import 'package:flutter/material.dart';
import 'main.dart';

class Productdetail extends StatefulWidget {
  const Productdetail({Key? key});

  @override
  State<Productdetail> createState() => _ProductdetailState();
}

class _ProductdetailState extends State<Productdetail> {
  Map? chairlist;
  int cout = 1;

  @override
  Widget build(BuildContext context) {
    chairlist = ModalRoute.of(context)?.settings.arguments as Map?;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffF4F5F9),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 30,
              ),
            ),
          ),

              title: Text(
                "Product",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),
              ),
          actions: [
            Container(
              margin: EdgeInsets.only( right: 20),
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
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              height: 300,
              width: 300,
              child: Image.network(chairlist?["img"] ?? "", height: 130),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 12,
                  width: 12,
                  decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 12,
                  width: 12,
                  decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 230, top: 20),
                child: Text(
                  "\$${chairlist?["price"]}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Color(0xffDD8E8D)),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      chairlist?["name"] ?? "",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 75),
                    child: Icon(Icons.star,color: Colors.yellow,),
                  ),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star_border,color: Colors.yellow,),
                  Text("4.5")
                ],
              ),

            ],
          ),

          Padding(
            padding: const EdgeInsets.only(right: 240, top: 20),
            child: Text(
              ("Color option"),
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35,top: 10),
                child: Container(
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Container(
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Container(
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 240, top: 30),
            child: Text(
              ("Description"),
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 55),
            child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text:
                        "Lorem ipsum dolor sit amet, consectetur \n\nadipiscing elit, sed do eiusmod tempor\n\n incididunt ut.",
                        style: TextStyle(
                            color: Color(0xffADAEAF),
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ],
                )),
          ),
          SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: Container(
                          height: 70,
                          width: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color(0xff26283C),
                          ),
                          child: Center(
                              child: InkWell(
                                  onTap: () {
                                    if(chairlist != null) {
                                      multichairs.add(chairlist!);
                                    }
                                    Navigator.pushNamed(context, "Bills_page");
                                  },
                                  child: Text(
                                    "+ Add To Cart",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ))),
                         ),
                       ),
                  ],
                ),
              ),
        ]));
  }
}