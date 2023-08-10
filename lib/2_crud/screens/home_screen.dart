import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart';

import '../models/product.dart';
import './add_new_product_screen.dart';
import 'update_product_screen.dart';

class CrudHomeScreen extends StatefulWidget {
  const CrudHomeScreen({super.key});

  @override
  State<CrudHomeScreen> createState() => _CrudHomeScreenState();
}

class _CrudHomeScreenState extends State<CrudHomeScreen> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD'),
        actions: [
          IconButton(
            onPressed: () async {
              await getProducts();
            },
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: products.length,
        separatorBuilder: (cntxt, index) => const Divider(),
        itemBuilder: (cntxt, index) {
          return ListTile(
            onLongPress: () {
              showDialog(
                context: context,
                builder: (cntxt) {
                  return AlertDialog(
                    titlePadding: const EdgeInsets.only(left: 20, top: 10),
                    contentPadding: EdgeInsets.zero,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('Chose an action'),
                        CloseButton(
                          color: Colors.red,
                          onPressed: () {
                            Navigator.pop(cntxt);
                          },
                        ),
                      ],
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(Icons.edit, color: Colors.green),
                          title: const Text('Edit'),
                          subtitle: const Text('Edit or Update.'),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (cntxt) {
                                  return UpdateProductScreen(
                                    product: products[index],
                                    updateProduct: updateProduct,
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(Icons.delete_forever,
                              color: Colors.red),
                          title: const Text('Delete'),
                          subtitle: const Text(
                              'Once delete you can not get it back.'),
                          onTap: () async {
                            Navigator.pop(cntxt);
                            await deleteProduct(products[index].productId);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            leading: Image.network(
              products[index].imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (cntxt, error, stackTrace) {
                return const Icon(Icons.image);
              },
            ),
            title: Text(products[index].productName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(products[index].productId),
                Text(products[index].totalPrice),
                Text(products[index].quantity),
              ],
            ),
            trailing: Text(products[index].unitPrice),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: goToScrenAddNewProductScren,
        child: const Icon(Icons.add),
      ),
    );
  }

  void goToScrenAddNewProductScren() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (cntxt) {
          return AddNewProductScren(addNewProduct: addNewProduct);
        },
      ),
    );
  }

  Future<void> getProducts() async {
    products.clear();
    const String url = 'https://crud.teamrabbil.com/api/v1/ReadProduct';
    final Response response = await get(Uri.parse(url));

    final Map<String, dynamic> jsonData = jsonDecode(response.body);
    if (response.statusCode == 200 && jsonData['status'] == 'success') {
      for (Map<String, dynamic> jsonProduct in jsonData['data']) {
        products.insert(0, Product.fromJson(jsonProduct));
      }
      setState(() {});
    }
  }

  Future<void> deleteProduct(String productId) async {
    final String url =
        'https://crud.teamrabbil.com/api/v1/DeleteProduct/$productId';
    final Response response = await get(Uri.parse(url));

    final Map<String, dynamic> jsonData = jsonDecode(response.body);
    if (response.statusCode == 200 && jsonData['status'] == 'success') {
      products.removeWhere((product) => product.productId == productId);
      setState(() {});
    }
  }

  Future<void> addNewProduct(Product product) async {
    const String url = 'https://crud.teamrabbil.com/api/v1/CreateProduct';

    final Response response = await post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(product),
    );

    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200 && jsonResponse['status'] == 'success') {
      await getProducts();
    }
  }

  Future<void> updateProduct(Product product) async {
    final String url =
        'https://crud.teamrabbil.com/api/v1/UpdateProduct/${product.productId}';

    final Response response = await post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(product),
    );
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200 && jsonResponse['status'] == 'success') {
      await getProducts();
    }
  }
}
