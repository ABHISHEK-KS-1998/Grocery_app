import 'package:flutter/material.dart';
import 'package:grocery_app/features/home/models/home_Product_data.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  const ProductTileWidget({Key? key, required this.productDataModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:NetworkImage(productDataModel.imageUrl??""),
              )
            ),
          ),
          Text(productDataModel.name!,style: TextStyle(fontSize: 30.0),),
          Text(productDataModel.description!,style: TextStyle(fontSize: 20.0)),


        ],
      ),
    );
  }
}
