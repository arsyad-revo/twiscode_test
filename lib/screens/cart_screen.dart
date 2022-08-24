import 'package:flutter/material.dart';
import 'package:twiscode_test/utils/func_util.dart';
import 'package:twiscode_test/widgets/item_list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: const Text(
            "CART",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                "Produk yang akan anda pesan",
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
                child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ItemList();
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
            )),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total harga",
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        numToCurrency(10000),
                        style: TextStyle(
                            color: Colors.amber[700],
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.amber[700])),
                        onPressed: () {},
                        child: const Text("Order")),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
