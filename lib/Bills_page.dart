import 'package:flutter/material.dart';
import 'main.dart';

class Billpage extends StatefulWidget {
  Billpage({super.key});

  @override
  State<Billpage> createState() => _BillpageState();
}

class _BillpageState extends State<Billpage> {
  double charge=30.00;

  @override
  Widget build(BuildContext context) {
    double subtotal = subtotalprice();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF4F5F9),
        centerTitle: true,
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
        title:(Text("Cart", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),)),
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
      bottomNavigationBar: Container(
        height: 280,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 51,
              color: Colors.black38,
              spreadRadius: 4,

            )
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Selected items",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 145),
                  child: Text(
                    "\$${subtotal}",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,color: Color(0xffDD8E8D)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 20),
              child: Row(
                children: [
                  Text(
                    "Shipping Fee",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 165),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            "\$${charge}",
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,color: Color(0xffDD8E8D)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(
                height: 1.9,
                width: 390,
                color: Color(0xffADAEAF),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10,left: 25,),
                  child: Text("Subtotal",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ), Padding(
                  padding: const EdgeInsets.only(bottom: 4, left: 180),
                  child: Text(
                    "\$${subtotal+charge}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Color(0xffDD8E8D)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Color(0xff26283C),),
                child: Center(
                    child: Text(
                      "CHECKOUT",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: multichairs.map((e) {
                return Stack(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 15),
                        child: Container(
                          height: 110,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.transparent,
                              border: Border.all(width: 3, color: Colors.black26)),
                          child: Row(
                            children: [
                              Image.network(
                                e["img"] ?? "",
                                height: 80,
                                width: 100,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(right: 140, top: 15),
                                    child: Text(
                                      e["name"],
                                      style: TextStyle(
                                          fontSize: 20, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(right: 100, top: 8),
                                        child: Text(
                                          "\$" + e["price"].toString(),
                                          style: TextStyle(
                                              color: Color(0xffDF1D38),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(5)),
                                            border:
                                            Border.all(color: Color(0xffDF1D38)),
                                            color: Colors.transparent,
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              if (e["qty"] > 1) {
                                                e["qty"] = e["qty"] - 1;
                                                setState(() {});
                                              } else {
                                                multichairs.remove(e);
                                                setState(() {});
                                              }
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              size: 15,
                                              color: Color(0xffDF1D38),
                                            ),
                                          )),

                                             Padding(
                                               padding: const EdgeInsets.only(left: 10),
                                               child: Text(
                                                e["qty"].toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500),
                                                                                           ),
                                             ),

                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(5)),
                                            border:
                                            Border.all(color: Color(0xffDF1D38)),
                                            color: Colors.transparent,
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              e["qty"] = e["qty"] + 1;
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.add,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
  double subtotalprice() {
    double subtotal = 0;
    multichairs.forEach((e) {
      subtotal += e["qty"] * e["price"];
    });
    return subtotal;
  }

}