import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twiscode_test/constants/url_constant.dart';
import 'package:twiscode_test/models/product_model.dart';
import 'package:twiscode_test/providers/cart_provider.dart';
import 'package:twiscode_test/utils/func_util.dart';
import 'package:twiscode_test/widgets/cached_image.dart';

class ItemCard extends StatelessWidget {
  final Product? data;
  final int? index;
  const ItemCard({Key? key, this.data, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, value, child) {
        return SizedBox(
          width: 140,
          child: Card(
            margin: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                value.addCart(data!, index!);
              },
              child: Column(children: [
                SizedBox(
                  height: 125,
                  child: CachedImage(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      imgUrl:
                          '${UrlConstant.imageUrl}${data?.defaultPhoto?.imgPath}'),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${data?.title}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.blue[900]),
                        ),
                        Text(
                          numToCurrency(num.tryParse(data!.price!)),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.amber[700],
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  const Icon(
                                    Icons.location_on_sharp,
                                    size: 16,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(
                                      width: 85,
                                      child: Text(
                                        "${data?.locationName}",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black45,
                                            fontWeight: FontWeight.w500),
                                      )),
                                ]),
                                Row(children: [
                                  const Icon(
                                    Icons.person,
                                    size: 16,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(
                                      width: 85, //give a width of your choice
                                      child: Text(
                                        "${data?.addedUserName}",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black45,
                                            fontWeight: FontWeight.w500),
                                      )),
                                ]),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Text(
                                    "READY STOCK",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Visibility(
                              visible: data?.isHalal == "1",
                              child: Expanded(
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Image.asset('assets/halal.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}
