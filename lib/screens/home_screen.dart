import 'package:flutter/material.dart';
import 'package:twiscode_test/widgets/item_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "SHOP",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ))
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(15),
                physics: const ScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    childAspectRatio: 80 / 125),
                itemBuilder: (context, i) {
                  return ItemCard();
                }),
          ),
        ));
  }
}
