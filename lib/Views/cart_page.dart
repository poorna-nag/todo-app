import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/catalog_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_2/data/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      body: cart.items.isEmpty
          ? Center(child: Text(' Cart is emthy'))
          : ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return ListTile(title: Text(item.name));
              },
            ),
    );
  }
}
