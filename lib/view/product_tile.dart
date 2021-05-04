import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/model/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  // clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey),
                  child: Image.network(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  product.title,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.w800),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Text('\$${product.price}',
                    style: TextStyle(
                        //fontSize: 32,
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
