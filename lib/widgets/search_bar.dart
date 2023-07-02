import 'package:flutter/material.dart';
import 'package:food_bank/data/productData.dart';
import 'package:food_bank/models/product.dart';
import 'package:food_bank/widgets/product_grid_view.dart';
import 'package:food_bank/widgets/product_list_view.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  List<Product> _filteredItems = [];

  bool showFilterScreen = false;

  void toggleFilterScreen() {
    setState(() {
      showFilterScreen = !showFilterScreen;
    });
  }

  @override
  void initState() {
    super.initState();
    _filteredItems.addAll(productData);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch(String searchText) {
    setState(() {
      _filteredItems = productData
          .where((item) =>
              item.title.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget filteredIcon = const Icon(
      Icons.tune_outlined,
    );

    if (showFilterScreen) {
      filteredIcon = const Icon(
        Icons.grid_view,
      );
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _searchController,
                  onChanged: _performSearch,
                  decoration: InputDecoration(
                    hintText: 'Search From Here',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              _searchController.clear();
                              _performSearch('');
                            },
                          )
                        : const Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: toggleFilterScreen,
                icon: filteredIcon,
                color: Colors.white,
                iconSize: 35,
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          if (showFilterScreen)
            ProductGridView(productData: _filteredItems)
          else
            ProductListView(products: _filteredItems),
        ],
      ),
    );
  }
}
