import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
   ProductItem(this.id, this.title, this.imageUrl,);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        header: GridTileBar(
          title: Text(
            title, textAlign: TextAlign.center,
          ),
        ),
          footer: GridTileBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart,
          color: Colors.deepOrange),
        ),
        backgroundColor: Colors.black87,
        title: Text(
          title, textAlign: TextAlign.center,
        ),
      ),
          child: GestureDetector(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ProductDetailScreen(title),));},
            child: Image.network(imageUrl,
            fit: BoxFit.cover,),
          ),),
    );
  }
}
