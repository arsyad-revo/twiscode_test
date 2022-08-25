import 'package:flutter/material.dart';
import 'package:twiscode_test/constants/url_constant.dart';
import 'package:twiscode_test/models/cart_model.dart';
import 'package:twiscode_test/utils/func_util.dart';
import 'package:twiscode_test/widgets/cached_image.dart';

class ItemList extends StatelessWidget {
  final Cart? cart;
  const ItemList({Key? key, this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
          Row(
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: CachedImage(
                    borderRadius: BorderRadius.circular(10),
                    imgUrl: '${UrlConstant.imageUrl}${cart!.image}'),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        "${cart!.productName}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.blue[900], fontSize: 12),
                      ),
                    ),
                    Text(
                      numToCurrency(cart!.productPrice!),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.amber[700],
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Visibility(
                      visible: cart!.condition!.isNotEmpty,
                      child: Text(
                        "(${cart?.condition})",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {},
                      behavior: HitTestBehavior.translucent,
                      child: Icon(
                        Icons.indeterminate_check_box,
                        color: Colors.red[400],
                      )),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text("${cart!.quantity}")),
                  GestureDetector(
                    onTap: () {},
                    behavior: HitTestBehavior.translucent,
                    child: const Icon(
                      Icons.add_box,
                      color: Colors.cyan,
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: cart!.condition!.isNotEmpty,
                child: Text(
                  "${cart?.weight} kg",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
