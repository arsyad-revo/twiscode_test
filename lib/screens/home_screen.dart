import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:twiscode_test/providers/cart_provider.dart';
import 'package:twiscode_test/providers/product_provider.dart';
import 'package:twiscode_test/screens/cart_screen.dart';
import 'package:twiscode_test/widgets/alert_widget.dart';
import 'package:twiscode_test/widgets/item_card.dart';
import 'package:twiscode_test/widgets/item_shimmer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    context.read<ProductProvider>().getProducts();
    context.read<CartProvider>().loadCartCount();
  }

  @override
  Widget build(BuildContext context) {
    final loading = context.select((ProductProvider n) => n.loading);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "SHOP",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: const CartScreen()));
            }, icon: Consumer<CartProvider>(
              builder: (context, value, child) {
                return Badge(
                  badgeContent: Text(
                    '${value.totalItem}',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: BadgeShape.square,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  borderRadius: BorderRadius.circular(3),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                );
              },
            ))
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Consumer<ProductProvider>(
              builder: (context, value, child) {
                if (loading!) {
                  return GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(15),
                      physics: const ScrollPhysics(),
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 15,
                              crossAxisCount: 2,
                              childAspectRatio: 80 / 125),
                      itemBuilder: (context, i) {
                        return const ItemShimmer();
                      });
                }
                if (value.resultProducts.statusCode != 200 && !loading) {
                  return AlertWidget(
                    onPressed: () {
                      setState(() {});
                      context.read<ProductProvider>().getProducts();
                    },
                  );
                }
                return GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(15),
                    physics: const ScrollPhysics(),
                    itemCount: value.products?.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 15,
                            crossAxisCount: 2,
                            childAspectRatio: 80 / 125),
                    itemBuilder: (context, i) {
                      final product = value.products?[i];
                      return ItemCard(
                        data: product,
                        index: i,
                      );
                    });
              },
            ),
          ),
        ));
  }
}
