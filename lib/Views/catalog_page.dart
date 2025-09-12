import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/cart_page.dart';
import 'package:flutter_application_2/data/item.dart';
import 'package:provider/provider.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

final List<Item> catalogItems = [
  Item(id: '1', name: 'Laptop', price: 50000),
  Item(id: '2', name: 'Mobile', price: 20000),
  Item(id: '3', name: 'Headphones', price: 2000),
];

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('cataloge page', style: TextStyle(fontSize: 20)),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                },
                icon: Icon(Icons.shopping_cart),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: catalogItems.length,
              itemBuilder: (context, index) {
                final item = catalogItems[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('₹${item.price.toStringAsFixed(2)}'),
                  trailing: ElevatedButton.icon(
                    onPressed: () {
                      cart.add(item);
                      //  print("$item");
                    },
                    label: Text('add to cart'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Cart extends ChangeNotifier {
  final List<Item> _items = [];

  List<Item> get items => _items;

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Item item) {
    _items.remove(item);
    notifyListeners();
  }
}
