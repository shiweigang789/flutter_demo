import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/elements/Frame/Spacing/SliverPadding/product_list.dart';

class SliverPaddingDemo extends StatelessWidget {
  Widget _buildItem(BuildContext context, ProductItem product) {
    return Container(
      height: 100.0,
      margin: const EdgeInsets.only(bottom: 5.0),
      padding: const EdgeInsets.only(left: 10.0),
      color: Colors.blueGrey,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: <Widget>[
          Positioned(
            right: 40.0,
            child: Card(
              child: Center(
                child: Text(
                  product.name,
                  style: Theme.of(context).textTheme.title,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          ClipRRect(
            child: SizedBox(
              width: 70.0,
              height: 70.0,
              child: Image.asset(
                product.asset,
                fit: BoxFit.cover,
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(50.0, 10.0, 20.0, 0.0),
          sliver: SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return _buildItem(context, products[index]);
            }, childCount: products.length),
          ),
        ),
      ],
    );
  }
}
